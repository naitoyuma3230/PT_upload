drop table if exists journal;

CREATE TABLE journal (
id INT AUTO_INCREMENT COMMENT 'id',
title varchar(255) UNIQUE COMMENT 'タイトル',
presenter varchar(255)  COMMENT '発表者',
abstract varchar(255) UNIQUE COMMENT '概要',
keyword1 varchar(255)  COMMENT 'キーワード1',
keyword2 varchar(255)  COMMENT 'キーワード2',
keyword3 varchar(255)  COMMENT 'キーワード3',
maintext text  COMMENT '本文',
created datetime,
modified datetime,
PRIMARY KEY(id,title,presenter,abstract)
);

INSERT INTO journal(title,presenter,abstract,keyword1,keyword2,keyword3,maintext,created,modified)
VALUES
  ("前庭機能低下に対し感覚入力に着目した介入を行い、自宅退院に至った症例",
    "r1020247@yahoo.co.jp",
    "今回、くも膜下出血、交通性水頭症後、動作時のめまい感、平衡機能低下が原因でADL能力の低下を呈した症例を担当した。前庭機能を中心に視覚、体制感覚など姿勢制御における感覚情報の入力に着目し訓練を行った。その際、病前に監督として指導を行っていたサッカーを訓練として取り入れた介入を行い、自宅退院に至ったためここに紹介する。",
    "前庭","感覚","監督",
    "【はじめに】
　今回、くも膜下出血、交通性水頭症後、動作時のめまい感、平衡機能低下が原因でADL能力の低下を呈した症例を担当した。前庭機能を中心に視覚、体制感覚など姿勢制御における感覚情報の入力に着目し訓練を行った。その際、病前に監督として指導を行っていたサッカーを訓練として取り入れた介入を行い、自宅退院に至ったためここに紹介する。
【倫理的配慮】
ヘルシンキ宣言に則り、本症例と家族に対して症例報告の趣旨・目的を十分に説明し、書面にて同意を得た。
【症例紹介】
本症例はくも膜下出血後、交通性水頭症を呈しVPシャント術、頭蓋形成術を施工された60代男性である。10年前に左小脳梗塞を発症するが復職し、仕事内容は主に事務であった。またサッカー少年団の監督をしていた。
【初期評価】
　発症より35病日に本院入院となった。入院時、歩行能力は歩行器を使用し軽介助。動作時に回転性のめまい感があった。身体機能評価はFanctional Balance Scale(以下FBS)37/56点、Fanctional Assessment Control for Control of Trank(以下FACT)14/20点、運動失調テストでは踵膝試験、向脛巧打試験で左側拙劣、Timed Up and Go test(以下TUG)左20.6秒、右19.9秒、10ｍ歩行テスト22.5秒、35歩となっている。また前庭機能テストでは閉眼条件でのタンデム立位は2.1秒、足踏みテスト、6ｍ歩行はふらつきのため途中で中止となった。
【介入】
　姿勢制御において感覚情報を視覚、前庭覚、体性感覚に分類し、条件を設定することで感覚入力を調節することに着目し閉眼立位や継ぎ足立位，バランスボードを利用したバランス練習を行った。またサッカー練習は、視線や頭部位置の変化で生じるめまいを考慮し難易度を調節して行った。
【結果】
　発症より96病日、復職予定にて退院した。めまい感は自制内となり、転倒に至る事はなくなった。身体機能評価はFBS54/56点。FACT17/20点、TUG左12.5秒、右10.9秒、運動失調テストは初期評価と変化なく踵膝試験、向こう脛軽叩打試験で左側の拙劣となった。前庭機能検査では閉眼タンデム立位34秒、閉眼6m歩行テスト153cm左偏位、足踏みテスト左10㎝、前方12㎝の頭部方向右10°偏位となった。
【考察】
くも膜下出血に伴う交通性水頭症では、直接的な脳幹部、小脳部への圧迫がめまいや嘔気といった症状を生じ得る要因となりやすく、本症例においては前庭機能評価や閉眼条件におけるふらつきの増加より、前庭性運動失調によるADL能力低下が考えられた。前庭リハビリテーションでは視覚や体性感覚を制限または混乱させ、前庭に頼らざるを得ない条件を工夫することが必要であるとされ、本症例においても床面や視覚情報の条件を設定したバランス訓練により、前庭機能を強調した訓練が可能であった。またサッカー介入では、ボールの追視や空間認識などの視覚情報、頭部位置や姿勢の変化に対応した動作訓練が可能であったと考える。",
"now()","now()");

create table users(
  id int not null auto_increment primary key,
  email varchar(255) unique,
  password varchar(255),
  created datetime,
  modified datetime
);

desc users;
