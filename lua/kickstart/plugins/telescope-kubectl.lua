return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'kezhenxu94/telescope-kubectl.nvim',
    },
    config = function()
      require('telescope').setup {
        -- Your telescope configuration
      }
      require('telescope').load_extension 'kubectl'

      require('which-key').register {
        ['<leader>'] = {
          k = {
            name = '+kubectl',
            c = {
              name = '+contexts, configmaps, cronjobs, etc',
              t = { require('telescope').extensions.kubectl.contexts, 'Kubernetes Contexts' },
              m = { require('telescope').extensions.kubectl.configmaps, 'Kubernetes Configmaps' },
              j = { require('telescope').extensions.kubectl.cronjobs, 'Kubernetes CronJobs' },
            },
            d = { require('telescope').extensions.kubectl.deployments, 'Kubernetes Deployments' },
            j = { require('telescope').extensions.kubectl.jobs, 'Kubernetes Jobs' },
            k = { require('telescope').extensions.kubectl.api_resources, 'Kubernetes Resources' },
            n = {
              name = '+namespaces, nodes, etc',
              s = { require('telescope').extensions.kubectl.namespaces, 'Kubernetes Namespaces' },
              o = { require('telescope').extensions.kubectl.nodes, 'Kubernetes Nodes' },
            },
            s = {
              name = '+secrets, services, statefulsets, etc',
              ec = { require('telescope').extensions.kubectl.secrets, 'Kubernetes Secrets' },
              vc = { require('telescope').extensions.kubectl.services, 'Kubernetes Services' },
              ts = { require('telescope').extensions.kubectl.statefulsets, 'Kubernetes StatefulSets' },
            },
            p = {
              name = '+pods, port-forwards',
              o = { require('telescope').extensions.kubectl.pods, 'Kubernetes Pods' },
              f = { require('telescope').extensions.kubectl.port_forwards, 'Kubernetes Port Forwards' },
            },
          },
        },
      }
    end,
  },
}
