<script>
export default {//外部から使用できる範囲を指定する
  // data() で返すプロパティはリアクティブな状態になり、
  // `this` 経由でアクセスすることができます。
  data() {
    return {
      count: 0
    }
  },

  // メソッドの中身は、状態を変化させ、更新をトリガーさせる関数です。
  // 各メソッドは、テンプレート内のイベントハンドラーにバインドすることができます。
  methods: {
    increment() {
      this.count++
    }
  },

  // ライフサイクルフックは、コンポーネントのライフサイクルの
  // 特定のステージで呼び出されます。
  // 以下の関数は、コンポーネントが「マウント」されたときに呼び出されます。
  mounted() {
    console.log(`The initial count is ${this.count}.`)
  }
} //export default でメンバーを囲むことで、外部からも参照できるようにします。
//単一ファイルコンポーネントでは外部から参照されることが前提の仕組みになるので、
//基本的に<script>の部分は 「export default 」で囲むことが前提となります。
</script>