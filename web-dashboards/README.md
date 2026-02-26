# BlackRoad Dashboards - Web Components

Transform terminal dashboards into embeddable web components for any website.

## Features

- 🎨 **Beautiful Design** - BlackRoad OS aesthetic with dark/light themes
- 🔄 **Auto-Refresh** - Real-time updates with configurable intervals
- 📱 **Responsive** - Works on desktop, tablet, and mobile
- 🎯 **Easy Integration** - Simple JavaScript API
- ⚡ **Lightweight** - No heavy dependencies
- 🔧 **Customizable** - Theme, colors, refresh rate

## Quick Start

### 1. Include CSS and JavaScript

```html
<link rel="stylesheet" href="css/dashboard-core.css">
<script src="js/dashboard-core.js"></script>
<script src="components/system-dashboard.js"></script>
```

### 2. Create Container

```html
<div id="my-dashboard"></div>
```

### 3. Initialize Dashboard

```javascript
const dashboard = new SystemDashboard('my-dashboard', {
    refreshInterval: 5000,  // Refresh every 5 seconds
    theme: 'dark',           // 'dark', 'light', or 'terminal'
    showControls: true       // Show start/stop controls
});

dashboard.start();
```

## Available Dashboards

### System Monitoring
- `SystemDashboard` - CPU, Memory, Disk, Network

### Infrastructure
- `KubernetesDashboard` - Pods, Nodes, Services
- `DockerDashboard` - Containers, Images, Networks
- `RedisDashboard` - Cache metrics, commands
- `PostgreSQLDashboard` - Database monitoring

### Security
- `FirewallDashboard` - Rules, blocked IPs
- `SecurityDashboard` - IDS alerts, incidents

### Development
- `APIDashboard` - Endpoint monitoring
- `CICDDashboard` - Pipeline status
- `GitDashboard` - Repository activity

### Business
- `SalesDashboard` - Revenue, pipeline
- `AnalyticsDashboard` - User metrics

### IoT & Hardware
- `IoTDashboard` - Smart home devices
- `RaspberryPiDashboard` - Pi monitoring

### Crypto & DeFi
- `CryptoDashboard` - Portfolio tracking
- `DeFiDashboard` - Positions, yields
- `NFTDashboard` - Collection gallery

## Configuration Options

```javascript
{
    refreshInterval: 5000,    // Update interval in ms (0 = no auto-refresh)
    theme: 'dark',            // 'dark', 'light', 'terminal'
    showControls: true,       // Show control buttons
    dataSource: 'api',        // 'api', 'websocket', 'static'
    apiEndpoint: '/api/data', // API endpoint for data
    onUpdate: (data) => {},   // Callback on data update
    onError: (error) => {}    // Callback on error
}
```

## Custom Dashboards

Create your own dashboard by extending `DashboardCore`:

```javascript
class MyDashboard extends DashboardCore {
    updateDashboard() {
        // Fetch your data
        fetch('/api/my-data')
            .then(res => res.json())
            .then(data => {
                // Update display
                this.contentElement.innerHTML = `
                    <div class="dashboard-card">
                        <h3>${data.title}</h3>
                        <div class="metric">
                            <span class="metric-label">Value</span>
                            <span class="metric-value">${data.value}</span>
                        </div>
                    </div>
                `;
            });
    }
}
```

## CDN Usage

Use directly from CDN (when published):

```html
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/blackroad-dashboards/dist/dashboard-core.css">
<script src="https://cdn.jsdelivr.net/npm/blackroad-dashboards/dist/dashboard-core.js"></script>
```

## NPM Package

```bash
npm install blackroad-dashboards
```

```javascript
import { SystemDashboard } from 'blackroad-dashboards';

const dashboard = new SystemDashboard('container');
dashboard.start();
```

## WordPress Plugin

Use with the BlackRoad Dashboards WordPress plugin:

```
[blackroad-dashboard type="system" refresh="5000"]
```

## React Component

```jsx
import { SystemDashboard } from 'blackroad-dashboards/react';

function App() {
    return (
        <SystemDashboard 
            refreshInterval={5000}
            theme="dark"
        />
    );
}
```

## Examples

See the `examples/` directory for full working examples:

- `examples/index.html` - Basic dashboard
- `examples/multi-dashboard.html` - Multiple dashboards
- `examples/custom-theme.html` - Custom theming
- `examples/wordpress-embed.html` - WordPress integration

## Browser Support

- Chrome/Edge 90+
- Firefox 88+
- Safari 14+
- Mobile browsers

## License

MIT License - Use freely in your projects!

## Links

- [Documentation](https://github.com/blackboxprogramming/blackroad-dashboards)
- [Examples](./examples/)
- [API Reference](./API.md)
