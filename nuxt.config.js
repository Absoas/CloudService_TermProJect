module.exports = {
  /*
   ** Headers of the page
   */
  head: {
    title: 'kyb',
    meta: [{
        charset: 'utf-8'
      },
      {
        name: 'viewport',
        content: 'width=device-width, initial-scale=1'
      },
      {
        hid: 'description',
        name: 'description',
        content: ''
      }
    ],
    link: [{
        rel: 'icon',
        type: 'image/x-icon',
        href: '/favicon.ico'
      },
      {
        rel: 'stylesheet',
        href: 'https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.1/css/bulma.min.css'
      },
      {
        rel: "stylesheet",
        href: "https://uicdn.toast.com/tui.chart/latest/tui-chart.css"
      }
    ],
    script: [{
        src: "https://use.fontawesome.com/releases/v5.0.7/js/all.js",
        defer: ""
      },
      {
        src: "https://uicdn.toast.com/tui.code-snippet/latest/tui-code-snippet.js"
      },
      {
        src: "https://cdnjs.cloudflare.com/ajax/libs/raphael/2.2.7/raphael.js"
      },
      {
        src: "https://uicdn.toast.com/tui.chart/latest/tui-chart.js"
      }
    ]
  },
  /*
   ** Customize the progress bar color
   */
  loading: {
    color: '#3B8070'
  },
  /*
   ** Build configuration
   */
  build: {
    /*
     ** Run ESLint on save
     */
    extend(config, {
      isDev,
      isClient
    }) {
      if (isDev && isClient) {
        config.module.rules.push({
          enforce: 'pre',
          test: /\.(js|vue)$/,
          loader: 'eslint-loader',
          exclude: /(node_modules)/
        })
      }
    }
  }
}
