

import UIKit


struct Book {
    var image: UIImage?
    var author: String
    var bookTitle: String
    var price: String
    var description: String
    
}


struct BookInfo {
    
    var bestsellerBookArr: [Book] = [
        
        Book(image: UIImage(named: "image1.jpeg"), author: "정한경 | 북로망스 | 2022.07.07", bookTitle: "당신이라는 기적", price: "14,400원", description: "생애 첫 책을 통해 단숨에 베스트셀러 작가로 등극한 정한경의 두 번째 에세이. 삶에서 작지만 진정으로 소중한 것들을 발견하고 끌어안으며 꾸준히 걸어온 그의 느리고 깊숙한 발걸음을 이 책 『당신이라는"),
        Book(image: UIImage(named: "image2.jpeg"), author: "김다슬 | 클라우디아 | 2022.04.12", bookTitle: "기분을 관리하면 인생이 관리된다", price: "15,800원", description: "기분에 따라 그날 하루가 달라진다. 기분이 별로 좋지 않은 날엔 어떤 일을 해도 과정도 결과도 마음에 들지 않는다. 하지만 기분이 좋은 날엔 상대방이 나에게 실수를 하더라도 웃어넘길 수 있는 여유가 생기고,"),
        Book(image: UIImage(named: "image3.jpeg"), author: "후이 | 미디어숲 | 2022.08.10", bookTitle: "나라면 나와 결혼할까?", price: "15,100원", description: "저자는 풍부한 경험과 감성적인 글로 사랑하는 이들의 이야기를 들려준다. 그녀의 책은 이미 밀리언셀러가 되어 수백만 독자의 찬사를 받은 바 있다. 2014년, 2015년 중국 올해의 베스트셀러 대상을 2연패했으며"),
        Book(image: UIImage(named: "image4.jpeg"), author: "박찬위 | 하이스트 | 2021.11.25", bookTitle: "나는 당신이 행복했으면 좋겠습니다", price: "12,400원", description: "「나는 당신이 행복했으면 좋겠습니다」는 저자가 삶 속에서 사랑과 사람, 그리고 '나'를 대하며 느꼈던 행복에 대한 생각들을 이야기 한다. 글을 읽다 보면 때로는 현실적인 조언을, 때로는 따듯한 위로를"),
        Book(image: UIImage(named: "image5.jpeg"), author: "김상현 | 필름(Feelm) | 2022.04.20", bookTitle: "당신은 결국 무엇이든 해내는 사람", price: "13,500원", description: "『내가 죽으면 장례식에 누가 와줄까』를 통해 수많은 독자의 사랑을 받은 김상현 작가의 신작이 3년 만에 출간되었다. 전작을 통해 인간관계와 행복에 대해 따뜻한 시선과 위로의 문장을 전했다면, 신작 『당신은")
        
    ]
    
    var myBookArr: [Book] = [
        Book(image: UIImage(named: "image6.jpeg"), author: "손웅정 | 수오서재 | 2021.10.15", bookTitle: "모든 것은 기본에서 시작한다", price: "14,400원", description: "‘겸손하라. 네게 주어진 모든 것들은 다 너의 것이 아니다’, ‘감사하라. 세상은 감사하는 자의 것이다’, ‘삶을 멀리 봐라. 욕심을 버리고 마음을 비워라’… 손흥민 선수의 아버지이자 축구 지도자로서"),
        Book(image: UIImage(named: "image7.jpeg"), author: "정영욱 | 부크럼 | 2021.05.14", bookTitle: "잘했고 잘하고 있고 잘 될 것이다", price: "13,500원", description: "20만 부 돌파 기념 개정판 50주 연속 에세이 베스트셀러 12편의 미공개 원고 수록 ‘21세기를 위한 10권의 도서’ 선정 ‘2020 올해의 문장 1위’ 선정 독보적 에세이스트 정영욱이 다시 건네는 한 권의"),
        Book(image: UIImage(named: "image8.jpeg"), author: "조우성 | 서삼독 | 2022.07.07", bookTitle: "한 개의 기쁨이 천 개의 슬픔을 이긴다: 삶과 태도에 관하여", price: "13,300원", description: "25년차 변호사가 직접 보고 듣고 겪은, 드라마보다 더 드라마 같은 인생 이야기를 담은 책이다. 실제 스토리를 바탕으로 진한 여운을 선사하는 드라마형 에세이로 총 2권으로 나누어 세상에 선을 보인다. 1권"),
        Book(image: UIImage(named: "image9.jpeg"), author: "김재식 | 북로망스 | 2022.05.10", bookTitle: "나로서 충분히 괜찮은 사람", price: "14,400원", description: "“오늘도 새벽까지 잠 못 이루었나요?” 괜찮은 사람이 되려 노력하느라 지친 당신에게 에세이스트 김재식이 2년 만에 선사하는 따뜻한 공감과 응원의 편지 다섯 권의 에세이를 모두 베스트셀러 반열에 올리며"),
        Book(image: UIImage(named: "image10.jpeg"), author: "남궁원 | 모모북스 | 2022.07.18", bookTitle: "마음을 업데이트할 시간입니다", price: "14,200원", description: "불안과 걱정을 안고 사는 당신에게 보내는 마음 처방전, 『가만히 있어도 괜찮다 말해주길』의 남궁원 작가가 건네는 두 번째 위로. “흔들리는 마음으로 살아가는 당신에게 해주고픈 말이 있어.” 누구에게 속"),
        Book(image: UIImage(named: "image11.jpeg"), author: "나태주 | 열림원 | 2022.05.31", bookTitle: "너무 잘하려고 애쓰지 마라", price: "12,600원", description: "작고 사소해 보이는 주변의 모든 존재를 애정 가득한 눈으로 시에 담아온 풀꽃 시인 나태주의 신작시집 『너무 잘하려고 애쓰지 마라』가 출간되었다. 힘든 시간을 지나 다시 반짝이는 오늘 앞에 선 우리에게"),
        Book(image: UIImage(named: "image12.jpeg"), author: "미셸 자우너 | 문학동네 | 2022.02.28", bookTitle: "H마트에서 울다", price: "14,400원", description: "『H마트에서 울다』는 인디 팝 밴드 재패니즈 브렉퍼스트의 보컬이자 한국계 미국인인 미셸 자우너의 뭉클한 성장기를 담은 에세이다. 출간 즉시 미국 서점가 베스트셀러에 오른 이 책은, 2021년 뉴욕 타임스, NPR"),
        Book(image: UIImage(named: "image13.jpeg"), author: "조우성 | 서삼독 | 2022.07.07", bookTitle: "한 개의 기쁨이 천 개의 슬픔을 이긴다: 일과 선택에 관하여", price: "13,300원", description: "25년차 변호사가 직접 보고 듣고 겪은, 드라마보다 더 드라마 같은 인생 이야기를 담은 책이다. 실제 스토리를 바탕으로 진한 여운을 선사하는 드라마형 에세이로 총 2권으로 나누어 세상에 선을 보인다. 1권")
    ]
    
    
    
}












