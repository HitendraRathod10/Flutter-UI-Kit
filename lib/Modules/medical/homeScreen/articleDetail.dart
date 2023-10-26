import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_ui_kit/Modules/medical/Utils/app_color.dart';
import 'package:get/get.dart';
import 'package:html/parser.dart' as htmlparser;
import 'package:html/dom.dart' as dom;

class ArticalsDetail extends StatefulWidget {
  const ArticalsDetail({super.key});

  @override
  State<ArticalsDetail> createState() => _ArticalsDetailState();
}

class _ArticalsDetailState extends State<ArticalsDetail> {
  String htmlData = """<div class="entry-content">
	
<h2><strong><span style="color:#800e4f" class="has-inline-color">Understanding the Knee</span></strong></h2>



<p>The knee is a hinge joint that connects the thigh bone (femur) to the lower leg bones (tibia and fibula). The knee allows for movement, supports weight-bearing, absorbs shock from walking and running, and provides stability.</p>



<p>The knee’s ability to flex and extend depends on several factors. First is the shape of your bones: if your femur or tibia is longer than usual, it may be harder for you to bend or straighten your knee.</p>



<p>Second, some ligaments connect bone to bone; if these ligaments are loose or damaged, you will have more difficulty bending or straightening your knee. Finally, menisci—pieces of cartilage that sit between the tibia and femur—act as shock absorbers when you walk or run; if they’re damaged, they can’t do their job properly, and this can affect how easily you can bend and straighten your knee.</p>



<h2><strong><span style="color:#800e4f" class="has-inline-color"><strong>Knee Pain Causes</strong></span></strong></h2>



<p>Knee pain can be caused by any number of conditions, from injuries to arthritis to torn ligaments. Some of the more common causes of knee pain include:</p>



<ul><li>Fractures</li><li>Sprains</li><li>Muscle strains</li><li>Bursitis</li><li>Tendonitis</li><li>Arthritis</li><li>Baker’s Cyst</li><li>Overuse or repetitive motion injuries (such as runner’s knee)</li><li>An injury to the knee from an accident or trauma</li><li>Degeneration of the joints</li><li>An anterior cruciate ligament (ACL) tear</li><li>Meniscus tear</li></ul>



<h2><strong><span style="color:#800e4f" class="has-inline-color"><strong><strong>Signs &amp; Symptoms of Knee Pain</strong></strong></span></strong></h2>



<p>If you’re experiencing knee pain, it’s essential to identify the cause of your symptoms. Here are some common signs and symptoms of knee pain:</p>



<ul><li>Pain in the front of the knee</li><li>Pain in the back of the knee</li><li>Pain behind or around the kneecap (patella)</li><li>Kneecap that feels loose or unstable, especially when walking downstairs or squatting</li><li>Kneecap that feels like it pops out of place (this is called patellar dislocation)</li><li>Swelling around the knee area, especially after long periods of sitting or standing</li><li>Pain while squatting or going downstairs</li><li>Stiffness in your leg muscles and tendons</li></ul>



<h2><strong><span style="color:#800e4f" class="has-inline-color"><strong><strong><strong>How to Know if Your Knee Pain is Serious</strong></strong></strong></span></strong></h2>



<p>You might have knee pain and not even realize it. It’s normal to feel some knee discomfort when doing activities like running or squatting. But if you start noticing that your knee pain is getting worse or starting to interfere with your daily life, it may cause concern. If you’ve experienced knee pain for more than two weeks, you should immediately see an orthopedic expert.</p>



<h2><span style="color:#800e4f" class="has-inline-color"><strong>Knee Pain Diagnosis</strong></span></h2>



<p>The first step in diagnosing knee pain is to determine whether the pain is acute or chronic. Acute knee pain is characterized by an onset within one month and may be caused by minor trauma or a more severe condition such as a torn ligament or meniscus tear. Chronic knee pain persists beyond three months and may be due to osteoarthritis, rheumatoid arthritis, gout, and rheumatoid arthritis.</p>



<p>To determine the cause of your knee pain, your doctor will perform a physical exam that includes an evaluation of your range of motion, balance, and muscle strength. The orthopedic doctor may also use diagnostic imaging techniques, such as X-rays or CT scans, to confirm whether there is any damage to your bones or cartilage. If your orthopedic surgeon suspects you have torn ligaments or cartilage, they may order MRI scans to look for further structural damage in the knee joint.</p>



<h2><strong><span style="color:#800e4f" class="has-inline-color"><strong><strong><strong><strong><strong>Knee Pain Treatment</strong></strong></strong></strong></strong></span></strong></h2>



<p>There are several treatments available for knee pain.</p>



<p><strong>Non-surgical Treatments:</strong></p>



<ul><li>An orthopedic expert may prescribe over-the-counter pain medications to help manage pain. These medications should only be used for short periods, as they may cause stomach irritation, liver damage, and other serious side effects</li><li>Physical therapy can be done to help strengthen the muscles around the knee and improve the range of motion in the joint. This is especially helpful if underlying muscle or tendon strength issues contribute to joints’ instability</li><li>Braces or splints may limit movement in an arthritic knee and decrease pain. These devices can also help protect an injured knee from further injury during activities like walking or running</li></ul>



<p><strong>Surgical Treatments:</strong></p>



<p>In general, knee surgeries fall under five broad categories:</p>



<ul><li>Repairing torn menisci (the cartilage disks that cushion your knee joint)</li><li>Repositioning torn ligaments/cartilage in the knee joint</li><li>Removing damaged tissue around the knee joint (arthroscopic surgery)</li><li>Removing bone spurs (osteophytes) formed around the knee joint</li><li>Removing loose bodies from within your knee</li></ul>



<p>Many surgical options are available to help you get back on your feet and stay active. Some of them are explained below,</p>



<h2><strong><span style="color:#800e4f" class="has-inline-color">Arthroscopic Surgery: </span></strong></h2>



<p>This procedure uses a small incision and a tiny camera to remove damaged cartilage, repair tore ligaments or tendons, or clean out debris from your joint. If the first procedure doesn’t help your symptoms, you may need more than one arthroscopic surgery.</p>



<h3><strong><span style="color:#800e4f" class="has-inline-color">Total Knee Replacement: </span></strong></h3>



<p>A total knee replacement may be necessary if your knee has become so damaged that bone-on-bone contact occurs. An orthopedics surgeon will replace your damaged knee joint with an artificial joint made from metal alloys, plastic components, and synthetic materials.</p>



<h3><strong><span style="color:#800e4f" class="has-inline-color">Partial Knee Replacement: </span></strong></h3>



<p>This type of surgery is best for patients whose disease is limited to one part of their knee joint such as the inner or outer compartment of the patellofemoral joint (kneecap). During this procedure, only one side of your knee is replaced while leaving the healthy bone in place on either side of the diseased area.</p>



<h3><span style="color:#800e4f" class="has-inline-color"><strong>Microfracture Surgery</strong>: </span></h3>



<p>This procedure involves making small holes in the tibial plateau (shin bone) to allow blood flow to stimulate the healing of damaged cartilage. This procedure is typically used for knee osteoarthritis, but you may also use it if you have had a previous injury to your knee that has worn down your cartilage and caused it to become hard and brittle.</p>



<h3><span style="color:#800e4f" class="has-inline-color"><strong>Meniscal Transplantation:</strong> </span></h3>



<p>This procedure replaces the torn meniscus with donated tissue from another person or cadaver. It may be helpful if you have severe arthritis or other problems related to your meniscus.</p>



<h3><span style="color:#800e4f" class="has-inline-color"><strong>Tendon Repair:</strong> </span></h3>



<p>This procedure repairs damaged tendons around your knee. Tendons are bands of tissue that connect muscles to bones, allowing you to move your joints smoothly during activities like walking and running.</p>



<h2><strong><span style="color:#800e4f" class="has-inline-color">How to Keep Your Knees Healthy</span></strong></h2>



<p>The knees are a vital joint in your body, and keeping them healthy is important for your overall health. If you’re active or on your feet all day, it’s important to take extra precautions to keep your knees in the best shape possible. Here are some tips for how to keep your knees healthy:</p>



<ul><li><strong>Wear Supportive Shoes.</strong> Make sure you’re wearing shoes that support your feet, ankles, and legs and have a good sole that will help absorb shock when you walk or run</li><li><strong>Annual Examinations.</strong> If you’re older than 50, consider getting an annual knee exam from a doctor or physical therapist specializing in joint health problems like arthritis or torn ligaments. They’ll assess any pain or stiffness in your legs and recommend exercises that will help improve mobility and overall strength and stability for the long term (they’re also good for preventing falls)</li><li><strong>Warm-up Before Exercising.</strong> Do warm-ups before exercise or activity. Warming up is a great way to stretch out your muscles and joints, so they’re ready to go by the time you begin exercising or performing any type of activity. You can also do a few squats or lunges before beginning any workout routine, so your muscles are primed for action!</li><li><strong>Get Moving.</strong> Promoting circulation throughout your whole body is key to keeping your knees happy. Try walking every day—it’s simple, effective, and free!</li><li><strong>Build Strength. </strong>Strengthen your quadriceps muscles by doing exercises such as squats and lunges, which will help support the knee joint during physical activity and reduce the risk of injury.</li></ul>



<p>Knee pain is common but can be treated. Our expert <a href="https://burjeel.com/burjeelspecialty/specialities/knee-clinic/">orthopedic surgeons</a> provide comprehensive care and perform various procedures to address knee pain, including arthroscopy, replacement surgeries, minimally invasive surgeries for knee arthritis, ligament injuries (<a href="https://burjeel.com/acl-injury/">ACL reconstruction</a>), meniscus tears (meniscectomy), and osteoarthritis treatment options such as total knee replacement or partial knee replacement surgery.</p>



<p>If you are experiencing knee pain, our team will take the time to listen to your concerns and explain your options. If surgery is an option, they will help you understand what to expect during the procedure and recovery. All surgical procedures aim to relieve symptoms, restore function and improve the quality of life for patients.</p>



<hr class="wp-block-separator">



<h2><span style="color:#800e4f" class="has-inline-color"><strong>Our Expert Orthopedic Knee Surgeons</strong></span></h2>



<hr class="wp-block-separator">



<div class="wp-block-columns">
<div class="wp-block-column">
<div class="wp-block-media-text alignwide is-stacked-on-mobile"><figure class="wp-block-media-text__media"><img loading="lazy" width="480" height="520" src="https://burjeel.com/wp-content/uploads/2022/06/DR.-SAMIH-TARABICHI-1.png" alt="" class="wp-image-6010 size-full" srcset="https://burjeel.com/wp-content/uploads/2022/06/DR.-SAMIH-TARABICHI-1.png 480w, https://burjeel.com/wp-content/uploads/2022/06/DR.-SAMIH-TARABICHI-1-277x300.png 277w" sizes="(max-width: 480px) 100vw, 480px"></figure><div class="wp-block-media-text__content">
<h3><span style="color:#800e4f" class="has-inline-color">Dr. Samih Tarabichi</span></h3>



<p>Consultant Orthopedic Surgeon</p>



<p>Burjeel Hospital, Dubai</p>



<div class="wp-block-buttons">
<div class="wp-block-button"><a class="wp-block-button__link has-background" href="https://burjeel.com/burjeelspecialty/doctors/dr-samih-tarabichi/" style="background-color:#800e4f">View Profile</a></div>
</div>
</div></div>
</div>



<div class="wp-block-column">
<div class="wp-block-media-text alignwide is-stacked-on-mobile"><figure class="wp-block-media-text__media"><img loading="lazy" width="480" height="520" src="https://burjeel.com/wp-content/uploads/2022/06/Nader.png" alt="" class="wp-image-6011 size-full" srcset="https://burjeel.com/wp-content/uploads/2022/06/Nader.png 480w, https://burjeel.com/wp-content/uploads/2022/06/Nader-277x300.png 277w" sizes="(max-width: 480px) 100vw, 480px"></figure><div class="wp-block-media-text__content">
<h3><span style="color:#800e4f" class="has-inline-color">Dr. Nader Darwich</span></h3>



<p>Consultant Knee Surgeon</p>



<p>Burjeel Hospital, Dubai</p>



<div class="wp-block-buttons">
<div class="wp-block-button"><a class="wp-block-button__link has-background" href="https://burjeel.com/burjeelspecialty/doctors/dr-nader-darwich/" style="background-color:#800e4f">View Profile</a></div>
</div>
</div></div>
</div>
</div>



<div class="wp-block-columns">
<div class="wp-block-column">
<div class="wp-block-media-text alignwide is-stacked-on-mobile"><figure class="wp-block-media-text__media"><img loading="lazy" width="480" height="520" src="https://burjeel.com/wp-content/uploads/2022/06/Photo-Dr.-Erik.png" alt="" class="wp-image-5932 size-full" srcset="https://burjeel.com/wp-content/uploads/2022/06/Photo-Dr.-Erik.png 480w, https://burjeel.com/wp-content/uploads/2022/06/Photo-Dr.-Erik-277x300.png 277w" sizes="(max-width: 480px) 100vw, 480px"></figure><div class="wp-block-media-text__content">
<h3><span style="color:#800e4f" class="has-inline-color">Dr. Professor Erik Hohmann</span></h3>



<p>Consultant Orthopedic Surgeon Sports Physician</p>



<p>Burjeel Hospital, Dubai</p>



<div class="wp-block-buttons">
<div class="wp-block-button"><a class="wp-block-button__link has-background" href="https://burjeel.com/burjeelspecialty/doctors/dr-erik-hohmann/" style="background-color:#800e4f">View Profile</a></div>
</div>
</div></div>
</div>



<div class="wp-block-column">
<div class="wp-block-media-text alignwide is-stacked-on-mobile" style="grid-template-columns:49% auto"><figure class="wp-block-media-text__media"><img loading="lazy" width="480" height="520" src="https://burjeel.com/wp-content/uploads/2022/06/Photo-Dr.-Matthias.png" alt="" class="wp-image-6012 size-full" srcset="https://burjeel.com/wp-content/uploads/2022/06/Photo-Dr.-Matthias.png 480w, https://burjeel.com/wp-content/uploads/2022/06/Photo-Dr.-Matthias-277x300.png 277w" sizes="(max-width: 480px) 100vw, 480px"></figure><div class="wp-block-media-text__content">
<h3><span style="color:#800e4f" class="has-inline-color">Dr. Matthias Honl</span></h3>



<p>Consultant Orthopedic Surgeon</p>



<p>Burjeel Hospital, Dubai</p>



<div class="wp-block-buttons">
<div class="wp-block-button"><a class="wp-block-button__link has-background" href="https://burjeel.com/burjeelspecialty/doctors/prof-dr-med-matthias-honl/" style="background-color:#800e4f">View Profile</a></div>
</div>
</div></div>
</div>
</div>



<div class="wp-block-columns">
<div class="wp-block-column"></div>
</div>
	</div>""";
  // dom.Document document = htmlparser.parse(htmlData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appScreenBackground,
appBar: AppBar(
  title: Text("knee pain".tr,style: TextStyle(color: Colors.white),),
  backgroundColor: AppColor.primary_color,
  elevation: 0,
  iconTheme: IconThemeData(
    color: Colors.white, //change your color here
  ),
),
      body: ListView(
        children: [
          Image.network("https://burjeel.com/wp-content/uploads/2022/06/Knee-Pain.jpg"),
          SizedBox(height: 10,),
          // Text("data"),
          Html(data: htmlData)
        ],
      ),
    );
  }
}
