# コラム：研究課題・理論・質問項目の作成
主に消費者行動着目したマーケティング研究では伝統的に、心理学的な理論に基づき、質問紙調査によって得たデータを統計的に分析するという研究方法がとられてきた。近年では様々な行動データの活用が盛んになってきたものの、質問紙調査に基づく研究は未だ影響力のあるアプローチであることは事実である。ここでは、このようなアプローチに基づく形で、研究課題と理論、質問項目をつなぐ作業の例を紹介する。

ここでは仮に、ある研究者が新しい技術（例えば、拡張現実：AR）をもちいたサービスに対する消費者の利用に関心があったとしよう^[読者によってはAR技術が新しい技術だと感じないかもしれないが、2020年代以降ARに関する消費者行動研究が多数刊行されている（Massa and Ladhari, 2023）。これを新しい技術として扱うことは、本書執筆時点での時代の記録として楽しんでほしい。]。AR技術を用いたアプリやサービスでは、個人を取り巻く現実の物理的環境にデジタルで強化された視覚的または聴覚的情報を合成し、それを表示する。また、スマートフォン画面やARグラス上で、対象物を動かしたり操作することができる。しかしながら、利便性が高いはずのARアプリやサービスを提供しても利用者が増えないということもあるかもしれない。そこで、「消費者のARサービス利用はどのような要因に影響を受けるか？」という問いを考え、文献レビューや事前調査を行ったと考える。

新しい技術やそれを用いたシステムの利用意向に関する代表的な理論として技術受容モデル（Technology Acceptance Model: TAM）がある。TAMは、組織においてコンピュータシステムを使いたがらないエンドユーザーが存在することに着目し、なぜそのような現象が起こるのかを説明する理論として提示された（Davis et al., 1989）。TAMは社会心理学領域で広く採用されていた合理的行為理論（Theory of Reasoned Action: TRA）を応用する形で提唱されたモデルである。TRAは個人が（意識的に）意図した行動の決定要因を説明するモデルとして、行動意図がその後の実際の行動につながることを想定しており、行動意図はその行動への態度と主観的規範によって規定されると考える理論である。Davis et al. (1989) は、TRAを踏まえ、技術システムに対する知覚された「使用容易性」と「有用性」に特に着目する形で理論的なモデルを提示した。本理論の詳細については割愛するが、TAMは人々がコンピュータシステムの使用意図を、主にそれが自分のパフォーマンスをどれだけ向上させるかという認知的な評価に基づいて形成すると考えたモデルである。Davis et al. (1989)によるTAMは以下の図のように示される。

![TAMフレームワーク（Davis et al., 1989）](column/TAM.png)

これらの楕円はそれぞれ異なる概念を表しており、概念間の矢印は因果関係（分析上は相関だが）を捉えている。特に明記がない限り、矢印は概念間の正の相関関係をとらえていることが一般的である。論文においてはそれぞれの矢印ごとに仮説が提示される。例えば、「コンピュータシステムへの知覚有用性は　同システムへの態度に正の影響を与える」や、「コンピュータシステムへの知覚有用性は同システムの利用意図に正の影響を与える」という予測が理論仮説として提示される。

ここでは伝統的なTAMモデルをARサービスの利用文脈に当てはめることを考えよう。調査・分析においては、モデルに含まれるそれぞれの概念に対応する質問項目への回答を収集し、変数間の関係を統計的に分析するという方法がとられる。この場合主に、ARサービスに対する使用容易性、有用性、態度、利用意図などの概念を捉えることになる。TAMに必要な質問項目はすでに確立されているため、それを採用することが好ましい。以下の表では、TAMの質問文と日本語訳を示している。なお、引用している文献にてそれぞれ着目している技術やシステム名（例えば、CHART-MASTERやelectronic mail）は、表内では「 [...] 」という表記に代替されている。

<!-- ```{r TAMtable, echo=FALSE, message=FALSE} -->
<!-- library(tidyverse) -->
<!-- TAM_items <- data.frame( -->
<!--   Category = c( -->
<!--     rep("有用性", 6), -->
<!--     rep("容易性", 5), -->
<!--     "態度", -->
<!--     rep("利用意図", 2) -->
<!--   ), -->
<!--   English = c( -->
<!--     "Using [...] in my job would enable me to accomplish tasks more quickly.", -->
<!--     "Using [...] would improve my job performance.", -->
<!--     "Using [...] in my job would increase my productivity.", -->
<!--     "Using [...] would enhance my effectiveness on the job.", -->
<!--     "Using [...] would make it easier to do my job.", -->
<!--     "I would find [...] useful in my job.", -->
<!--     "Learning to operate [...] would be easy for me.", -->
<!--     "I would find it easy to get [...] to do what I want it to do.", -->
<!--     "My interaction with [...] would be clear and understandable.", -->
<!--     "I would find [...] to be flexible to interact with.", -->
<!--     "I would find [...] easy to use.", -->
<!--     "All things considered, my using [...] in my job is: [Good...Bad]", -->
<!--     "Assuming I had access to [...], I intend to use it.", -->
<!--     "Given that I had access to [...], I predict that I would use it." -->
<!--   ), -->
<!--   Japanese = c( -->
<!--     "仕事で[...]を使用すると、タスクをより迅速に完了できるようになる。", -->
<!--     "[...]を使用すると、仕事のパフォーマンスが向上する。", -->
<!--     "私の仕事で[...]を使用すると、生産性が向上する。", -->
<!--     "[...]を使用すると、仕事の効率が向上する。", -->
<!--     "[...]を使えば仕事が楽になる。", -->
<!--     "[...]は仕事に役立つ。", -->
<!--     "[...]の操作を覚えるのは私にとって簡単である。", -->
<!--     "私がやりたいことを[...]にやらせるのは簡単である。", -->
<!--     "[...]とのやりとりは明確でわかりやすい。", -->
<!--     "[...]は柔軟に操作できる。", -->
<!--     "[...]は使いやすい。", -->
<!--     "総合的に考えて、私の仕事における[...]の使用は…: [良い...悪い]", -->
<!--     "[...]が利用可能な場合、私はそれを使用するつもりである。", -->
<!--     "[...]が利用可能な場合、私はそれを使用すると予想する。" -->
<!--   ), -->
<!--   Reference = c( -->
<!--     rep("Davis, 1989", 6), -->
<!--     rep("Davis, 1989", 5), -->
<!--     "Davis, 1987 Dissertation", -->
<!--     rep("Venkatesh and Davis, 1996", 2) -->
<!--   ), -->
<!--   stringsAsFactors = FALSE -->
<!-- ) -->

<!-- # 表示 -->
<!-- knitr::kable(TAM_items, caption = "TAM尺度表", align = "cccc") -->
<!-- ``` -->

![TAM尺度対応表](column/TAM_items.png)

なお、ARサービスの文脈にぴったり沿う文言になっている質問項目は無いかもしれない。その場合、教示文や、質問文の一部を自身の研究文脈に沿うように工夫し、質問項目を作成する必要がある。ここで重要なのは、質問紙調査で捉えているシステムや技術を具体的に特定することである。例えば、Davis et al. (1989) では、WriteOne というWord processing システムへの利用についてミシガン大学のMBA学生に対する調査を行っている。調査参加者はこのシステムに対する紹介を受けた後に質問項目に回答している。このように、TAMに基づく調査では、調査の対象となる技術やシステムを具体的に特定し、それに対する評価を回答してもらうという形式で調査を設計する必要がある。

調査すべき概念およびそれを捉える質問項目が確定したら、\@ref(survey) 章で説明した質問紙調査設計の過程を経て、データ収集が実行される。そしてそのデータを用いて分析を行い、消費者のARサービスの利用がTAMの枠組みで説明できることが確認できれば、冒頭で捉えた問い（消費者のARサービス利用はどのような要因に影響を受けるか？）に回答することができる。

しかし、対抗仮説となる別の要因や説明論理もあるかもしれない。仮にTAMに基づく仮説と整合的な結果を得たとしても、それ以外の説明論理の可能性が除外できたわけではない。例えば、AR技術には単に新技術ということだけではなく特有の便益があるかもしれない。我々がオンライン上で買い物をする場合、製品を手にとってサイズを確認したり、表面と裏面を眺めたりすることが難しい。これは、製品についての情報探索・収集を行う場面にて製品の物理的操作に伴う感覚的情報を得ることができないことを示している。このような特徴は、オンラインにおける感覚的なコントロールと感覚についてのフィードバック（外部や自身の行動から受け取る感覚情報）の欠如と呼ばれる（Heller et al., 2019）。

AR技術の特性に着目した議論として、ARによる擬似的な製品操作によって、オンラインでは欠如していた感覚フィードバックを回復でき、それが心理的便益につながるという議論も存在する（Heller et al., 2019）。しかし、このような心理的便益が、使用容易性や有用性という概念に吸収されるのか、それとも独立した便益として機能するのかという点については、議論の余地がある。そのため、もしTAMが特に重要な説明論理であることを示したい場合には、感覚フィードバックのような重要な別の要素をコントロールしたり、それらの影響を排除したうえで、効果を検証する必要がある。

また、TAMについての議論も批判的に検討され、発展している。そもそも、Davis et al. (1989) によるTAMの検証では、態度による使用容易性と有用性の媒介効果は限定的であることが確認されたため、最終的には態度を含めない形でのモデルが提示されるようになった（Okazaki and Tagashira, 2019）。その後、Unified Theory of Acceptance and Use of Technology（UTAT）やUTAT2など、技術受容のモデルの拡張や改善が行われている（Venkatesh et al., 2012）。関心のある読者はぜひ参考文献を参照して理解を進めてほしい。

ここではTAMを例にして、自身の立てた問いから、先行研究に基づく理論を参照し、質問項目を特定するプロセスを紹介した。なお、マーケティング領域では、心理学や経済学といった様々な理論を拠り所として調査・分析方法が設計される。そのため、マーケティング領域で扱われる理論を網羅的に紹介することは紙幅の都合上難しいが、研究で用いられてきた質問紙調査用の質問項目を網羅的に知りたい場合には、Bruner (2019) のような図書もあるので関心のある読者は参照してほしい。

ただし、多くの質問項目はその背後にある理論的枠組みとセットで開発されていることに注意が必要である。複数の（異なる理論に依拠する）研究からチェリーピッキング的に質問項目を選択し質問紙を構成しても、結果として分析されるモデルの妥当性や信頼性は高くない。このような姿勢で構築されたモデルは研究者の間では「フランケンシュタインモデル」などと呼ばれ、避けられることが多い。マーケティング現象や質問項目といった具体的な情報と、その背後にある理論的な議論との関連性についてもぜひ関心を持って勉強してみてほしい。

## 参考文献

Davis, F., D. (1987). User acceptance of information system: The technology acceptance model
(TAM). Available online: https://deepblue.lib.umich.edu/bitstream/handle/2027.42/35547/b1409190.0001.001.pdf, (2025年4月9日取得).

Davis, F. D. (1989). Perceived Usefulness, Perceived Ease of Use, and User Acceptance of Information Technology. MIS Quarterly, 13(3).

Davis, F. D., Bagozzi, R. P., & Warshaw, P. R. (1989). User Acceptance of Computer Technology: A Comparison of Two Theoretical Models. Management Science, 35(8), 982-1003.


Bruner, C., G. (2019). *Marketing Scales Handbook: Multi-Item Measures for Consumer Insight Research*, Independently published.

Heller, J., Chylinski, M., de Ruyter, K., Mahr, D., & Keeling, D. I. (2019). Touching the Untouchable: Exploring Multi-Sensory Augmented Reality in the Context of Online Retailing. *Journal of Retailing*, 95(4), 219-234. 

Massa, E., & Ladhari, R. (2023). Augmented reality in marketing: Conceptualization and systematic review. *International Journal of Consumer Studies*, 47(6), 2335-2366.

Okazaki, S., & Tagashira, T. (2019). Mobile advertising: Current and future research directions. In S. Rodgers & E. Thorson (Eds.), (Second edi ed., pp. 325-339). New York: Taylor and Francis.


Venkatesh, V., Thong, J., Y. L., & Xu, X. (2012). Consumer Acceptance and Use of Information Technology: Extending the Unified Theory of Acceptance and Use of Technology. MIS Quarterly, 36(1).

