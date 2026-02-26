class SystemDashboard extends DashboardCore {
    updateDashboard() {
        // Simulate system metrics
        const metrics = {
            cpu: Math.random() * 100,
            memory: Math.random() * 100,
            disk: Math.random() * 100,
            network: {
                up: (Math.random() * 1000).toFixed(2),
                down: (Math.random() * 1000).toFixed(2)
            },
            uptime: Math.floor(Math.random() * 86400)
        };

        this.contentElement.innerHTML = `
            <div class="dashboard-grid">
                <div class="dashboard-card">
                    <h3>CPU Usage</h3>
                    <div class="metric">
                        <span class="metric-label">Current</span>
                        <span class="metric-value ${this.getStatusClass(metrics.cpu)}">${metrics.cpu.toFixed(1)}%</span>
                    </div>
                    <div class="progress-bar">
                        <div class="progress-bar-fill" style="width: ${metrics.cpu}%"></div>
                    </div>
                </div>
                
                <div class="dashboard-card">
                    <h3>Memory Usage</h3>
                    <div class="metric">
                        <span class="metric-label">Current</span>
                        <span class="metric-value ${this.getStatusClass(metrics.memory)}">${metrics.memory.toFixed(1)}%</span>
                    </div>
                    <div class="progress-bar">
                        <div class="progress-bar-fill" style="width: ${metrics.memory}%"></div>
                    </div>
                </div>
                
                <div class="dashboard-card">
                    <h3>Disk Usage</h3>
                    <div class="metric">
                        <span class="metric-label">Current</span>
                        <span class="metric-value ${this.getStatusClass(metrics.disk)}">${metrics.disk.toFixed(1)}%</span>
                    </div>
                    <div class="progress-bar">
                        <div class="progress-bar-fill" style="width: ${metrics.disk}%"></div>
                    </div>
                </div>
                
                <div class="dashboard-card">
                    <h3>Network</h3>
                    <div class="metric">
                        <span class="metric-label">Upload</span>
                        <span class="metric-value success">${metrics.network.up} Mbps</span>
                    </div>
                    <div class="metric">
                        <span class="metric-label">Download</span>
                        <span class="metric-value success">${metrics.network.down} Mbps</span>
                    </div>
                </div>
            </div>
        `;
    }

    getStatusClass(value) {
        if (value > 80) return 'error';
        if (value > 60) return 'warning';
        return 'success';
    }
}

if (typeof module !== 'undefined' && module.exports) {
    module.exports = SystemDashboard;
} else {
    window.SystemDashboard = SystemDashboard;
}
