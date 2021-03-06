module ApplicationHelper

    def setup_app
        User.create(first_name: 'Samia', last_name: 'Belhadj', email: 'samia@gatech.edu', password: 'ffff')
        User.create(first_name: 'Philip', last_name: 'Bale', email: 'pbale95@gmail.com', password: 'ffff')

        gtl_feedback = [['User 1',6,3,2,4,3,4, ''],
            ['User 2',3,3,3,4,3,4, ''],
            ['gbarr',5,3,4,2,2,3, ''],
            ['User 3',6,4,4,5,2,4, ''],
            ['Bgirl_skc',3,1,1,1,1,2, 'I hate atlanta'],
            ['User 4',4,4,3,2,3,3, ''],
            ['User 5',8,4,3,1,2,4, ''],
            ['Martha',5,3,2,1,2,2,'eh'],
            ['Austin',8,4,3,1,2,4, ''],
            ['hahsbdnxkdndb',3,4,5,3,3,4, ''],
            ['User 6',7,3,4,2,3,3, ''],
            ['JDHammersmit',6,4,4,3,2,2, ''],
            ['Voltaire',3,2,3,2,2,2, ''],
            ['tomtom',5,4,4,4,2,3, ''],
            ['Ruppert27',5,4,5,2,3,5,'Well, Im a guy, so it makes things like walking around at night a bit easier.  I really enjoy atlanta, even parts deemed as sketchy'],
            ['User 7',5,4,2,3,3,3, ''],
            ['Shira',3,3,3,1,3,3, ''],
            ['User 8',4,5,2,3,3,4,'Not too bad'],
            ['User 9',4,3,2,1,1,2, ''],
            ['User 10',7,4,3,1,2,2, ''],
            ['GTL',7,4,4,3,4,4,'Atlanta is pretty good'],
            ['User 11',3,3,3,3,2,2,'Housing is crappy and you might get mugged. My roommates car window got smashed in.'],
            ['User 13',7,4,4,2,3,5,"For the part of Atlanta around Georgia Tech and GSU, not like the bluffs. "]]
    
        top_left_lat = 33.767478
        top_left_long = -84.421809

        bottom_right_lat =  33.697240
        bottom_right_long = -84.328774

        gtl_feedback.each do |arr| 
            first_name = arr[0]
            safety = arr[1] * 10
            friendliness = arr[2]
            beauty = arr[3]
            transportation = arr[4]
            cleanliness = arr[5]
            comfort = arr[6]
            info = arr[7]

            latitude = range(bottom_right_lat, top_left_lat)
            longitude = range(top_left_long, bottom_right_long)

            user = User.create(first_name: first_name, last_name: '', password: 'ffff', email: 'test@test.com')
            feedback = Feedback.create(name: 'Atlanta', safety: safety, cleanliness: cleanliness, friendliness: friendliness, beauty: beauty, transportation: transportation, comfort: comfort, info: info, latitude: latitude, longitude: longitude)

            user.feedback << feedback
        end


        metz_feedback = [['User 1',9,3,4,5,5,4, ''],
            ['User 2',9,5,3,4,5,4, ''],
            ['gbarr',10,5,4,5,2,5, ''],
            ['User 3',10,4,4,5,2,4, ''],
            ['Bgirl_skc',9,5,5,4,5,2, 'I cant speak French which is why I have some issues.'],
            ['User 4',10,4,3,2,3,3, ''],
            ['User 5',8,4,3,5,2,4, ''],
            ['Martha',9,3,4,5,5,4,'good'],
            ['Austin',8,4,3,5,5,4, ''],
            ['hahsbdnxkdndb',9,4,5,3,3,4, ''],
            ['User 6',7,3,4,5,3,3, ''],
            ['JDHammersmit',8,4,4,3,2,2, 'pretty cool'],
            ['Voltaire',8,2,3,4,5,5, ''],
            ['tomtom',9,4,4,4,2,3, ''],
            ['Ruppert27', 8,4,5,2,3,5,'Its frequently cloudy and rainy, which makes it kinda miserable sometimes.  '],
            ['User 7',8,4,5,3,5,4, 'The prison is ugly but its nice beside that. Worst thing that happens is people ask you for change'],
            ['Shira',10,3,5,5,3,5, ''],
            ['User 8',10,5,2,3,3,4,'Not too bad'],
            ['User 9',8,3,2,5,5,2, ''],
            ['User 10',7,4,3,5,5,5, ''],
            ['GTL',8,4,4,3,4,4,'Metz is pretty good'],
            ['User 11',9,4,5,5,5,5,'I love it!'],
            ['User 13',7,4,4,5,3,5," "]]
    
        top_left_lat = 49.133369
        top_left_long = 6.154863

        bottom_right_lat = 49.097749
        bottom_right_long = 6.207885

        metz_feedback.each do |arr| 
            first_name = arr[0]
            safety = arr[1] * 10
            friendliness = arr[2]
            beauty = arr[3]
            transportation = arr[4]
            cleanliness = arr[5]
            comfort = arr[6]
            info = arr[7]

            latitude = range(bottom_right_lat, top_left_lat)
            longitude = range(top_left_long, bottom_right_long)

            user = User.create(first_name: first_name, last_name: '', password: 'ffff', email: 'test@test.com')
            feedback = Feedback.create(name: 'Metz', safety: safety, cleanliness: cleanliness, friendliness: friendliness, beauty: beauty, transportation: transportation, comfort: comfort, info: info, latitude: latitude, longitude: longitude)

            user.feedback << feedback
        end
    end

    def range (min, max)
        rand * (max-min) + min
    end
end