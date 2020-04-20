import Document, { Html, Head, Main, NextScript } from 'next/document'

class MyDocument extends Document {
  static async getInitialProps(ctx) {
    const initialProps = await Document.getInitialProps(ctx)
    return { ...initialProps }
  }

  render() {
    return (
      <Html>
        <Head />
        <body>
          <div dangerouslySetInnerHTML={{__html: `
            <script th:inline="javascript">
              /*<![CDATA[*/
              window.data = {
               users: /*[[%{users}]]*/ null
               }
              /*]]>*/
            </script>`.replace("%", "$")
          }} />
          <Main />
          <NextScript />
        </body>
      </Html>
    )
  }
}

export default MyDocument
