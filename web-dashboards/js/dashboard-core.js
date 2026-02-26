/**
 * BlackRoad Dashboard Web Framework
 * Converts terminal dashboards to embeddable web components
 */

class DashboardCore {
    constructor(containerId, options = {}) {
        this.container = document.getElementById(containerId);
        this.options = {
            theme: options.theme || 'dark',
            refreshInterval: options.refreshInterval || 5000,
            showControls: options.showControls !== false,
            ...options
        };
        this.isRunning = false;
        this.updateInterval = null;
        this.init();
    }

    init() {
        this.container.classList.add('blackroad-dashboard');
        this.container.setAttribute('data-theme', this.options.theme);
        
        if (this.options.showControls) {
            this.createControls();
        }
        
        this.createDashboardContent();
    }

    createControls() {
        const controls = document.createElement('div');
        controls.className = 'dashboard-controls';
        controls.innerHTML = `
            <button class="btn-start" data-action="start">▶ Start</button>
            <button class="btn-stop" data-action="stop" disabled>⏹ Stop</button>
            <button class="btn-refresh" data-action="refresh">🔄 Refresh</button>
            <select class="theme-selector">
                <option value="dark">Dark Theme</option>
                <option value="light">Light Theme</option>
                <option value="terminal">Terminal</option>
            </select>
        `;
        
        this.container.insertBefore(controls, this.container.firstChild);
        
        // Attach event listeners
        controls.querySelector('[data-action="start"]').addEventListener('click', () => this.start());
        controls.querySelector('[data-action="stop"]').addEventListener('click', () => this.stop());
        controls.querySelector('[data-action="refresh"]').addEventListener('click', () => this.refresh());
        controls.querySelector('.theme-selector').addEventListener('change', (e) => this.setTheme(e.target.value));
    }

    createDashboardContent() {
        const content = document.createElement('div');
        content.className = 'dashboard-content';
        this.contentElement = content;
        this.container.appendChild(content);
    }

    start() {
        this.isRunning = true;
        this.updateControls();
        this.refresh();
        
        if (this.options.refreshInterval > 0) {
            this.updateInterval = setInterval(() => this.refresh(), this.options.refreshInterval);
        }
    }

    stop() {
        this.isRunning = false;
        this.updateControls();
        
        if (this.updateInterval) {
            clearInterval(this.updateInterval);
            this.updateInterval = null;
        }
    }

    refresh() {
        // Override in subclasses
        this.updateDashboard();
    }

    updateDashboard() {
        // Override in subclasses
    }

    setTheme(theme) {
        this.options.theme = theme;
        this.container.setAttribute('data-theme', theme);
    }

    updateControls() {
        const controls = this.container.querySelector('.dashboard-controls');
        if (controls) {
            controls.querySelector('[data-action="start"]').disabled = this.isRunning;
            controls.querySelector('[data-action="stop"]').disabled = !this.isRunning;
        }
    }

    destroy() {
        this.stop();
        this.container.innerHTML = '';
    }
}

// Export for use in modules or global scope
if (typeof module !== 'undefined' && module.exports) {
    module.exports = DashboardCore;
} else {
    window.DashboardCore = DashboardCore;
}
