.class Lcom/android/server/wm/TaskRecord$TaskRecordFactory;
.super Ljava/lang/Object;
.source "TaskRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskRecordFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method create(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;Ljava/util/ArrayList;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;IZZZII)Lcom/android/server/wm/TaskRecord;
    .registers 65
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/ActivityTaskManagerService;",
            "I",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "ZZZII",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;JZ",
            "Landroid/app/ActivityManager$TaskDescription;",
            "IIIII",
            "Ljava/lang/String;",
            "IZZZII)",
            "Lcom/android/server/wm/TaskRecord;"
        }
    .end annotation

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-wide/from16 v16, p16

    move/from16 v18, p18

    move-object/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move/from16 v23, p23

    move/from16 v24, p24

    move-object/from16 v25, p25

    move/from16 v26, p26

    move/from16 v27, p27

    move/from16 v28, p28

    move/from16 v29, p29

    move/from16 v30, p30

    move/from16 v31, p31

    .line 2750
    new-instance v32, Lcom/android/server/wm/TaskRecord;

    move-object/from16 v0, v32

    invoke-direct/range {v0 .. v31}, Lcom/android/server/wm/TaskRecord;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;Ljava/util/ArrayList;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;IZZZII)V

    return-object v32
.end method

.method create(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/TaskRecord;
    .registers 13

    .line 2734
    new-instance v6, Lcom/android/server/wm/TaskRecord;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/TaskRecord;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)V

    return-object v6
.end method

.method create(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/TaskRecord;
    .registers 15

    .line 2728
    new-instance v7, Lcom/android/server/wm/TaskRecord;

    move-object v0, v7

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskRecord;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V

    return-object v7
.end method

.method handleUnknownTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreTask: Unexpected name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2986
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2987
    return-void
.end method

.method restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wm/ActivityStackSupervisor;)Lcom/android/server/wm/TaskRecord;
    .registers 45
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2761
    move-object/from16 v0, p1

    .line 2762
    nop

    .line 2763
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2764
    nop

    .line 2765
    nop

    .line 2766
    nop

    .line 2767
    nop

    .line 2768
    nop

    .line 2769
    nop

    .line 2770
    nop

    .line 2771
    nop

    .line 2772
    nop

    .line 2773
    nop

    .line 2774
    nop

    .line 2775
    nop

    .line 2776
    nop

    .line 2777
    nop

    .line 2778
    nop

    .line 2779
    nop

    .line 2780
    nop

    .line 2781
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 2782
    new-instance v14, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v14}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    .line 2783
    nop

    .line 2784
    nop

    .line 2785
    nop

    .line 2786
    nop

    .line 2787
    nop

    .line 2788
    nop

    .line 2789
    nop

    .line 2790
    nop

    .line 2791
    nop

    .line 2792
    nop

    .line 2793
    nop

    .line 2794
    nop

    .line 2796
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v13, 0x1

    sub-int/2addr v2, v13

    const-wide/16 v7, 0x0

    const-string v9, ""

    move-wide/from16 v28, v7

    move-object/from16 v27, v9

    move/from16 v18, v13

    move/from16 v39, v18

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/16 v23, 0x0

    const/16 v24, -0x1

    const/16 v26, 0x0

    const/16 v30, -0x1

    const/16 v31, -0x1

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v38, 0x0

    :goto_69
    const-string v13, "ActivityTaskManager"

    if-ltz v2, :cond_33e

    .line 2797
    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    .line 2798
    move-object/from16 v40, v12

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    .line 2801
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v41

    sparse-switch v41, :sswitch_data_472

    move-object/from16 v41, v9

    goto/16 :goto_1fa

    :sswitch_82
    move-object/from16 v41, v9

    const-string v9, "root_has_reset"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1fa

    const/4 v9, 0x6

    goto/16 :goto_1fb

    :sswitch_8f
    move-object/from16 v41, v9

    const-string v9, "real_activity"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1fa

    const/4 v9, 0x1

    goto/16 :goto_1fb

    :sswitch_9c
    move-object/from16 v41, v9

    const-string v9, "never_relinquish_identity"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1fa

    const/16 v9, 0xf

    goto/16 :goto_1fb

    :sswitch_aa
    move-object/from16 v41, v9

    const-string v9, "calling_package"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1fa

    const/16 v9, 0x15

    goto/16 :goto_1fb

    :sswitch_b8
    move-object/from16 v41, v9

    const-string v9, "persist_task_version"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1fa

    const/16 v9, 0x1b

    goto/16 :goto_1fb

    :sswitch_c6
    move-object/from16 v41, v9

    const-string v9, "last_description"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1fa

    const/16 v9, 0xd

    goto/16 :goto_1fb

    :sswitch_d4
    move-object/from16 v41, v9

    const-string v9, "affinity"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1fa

    const/4 v9, 0x4

    goto/16 :goto_1fb

    :sswitch_e1
    move-object/from16 v41, v9

    const-string v9, "min_width"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1fa

    const/16 v9, 0x19

    goto/16 :goto_1fb

    :sswitch_ef
    move-object/from16 v41, v9

    const-string v9, "prev_affiliation"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1fa

    const/16 v9, 0x11

    goto/16 :goto_1fb

    :sswitch_fd
    move-object/from16 v41, v9

    const-string v9, "task_type"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1fa

    const/16 v9, 0xc

    goto/16 :goto_1fb

    :sswitch_10b
    move-object/from16 v41, v9

    const-string v9, "calling_uid"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1fa

    const/16 v9, 0x14

    goto/16 :goto_1fb

    :sswitch_119
    move-object/from16 v41, v9

    const-string v9, "user_id"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1fa

    const/16 v9, 0x9

    goto/16 :goto_1fb

    :sswitch_127
    move-object/from16 v41, v9

    const-string v9, "root_affinity"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1fa

    const/4 v9, 0x5

    goto/16 :goto_1fb

    :sswitch_134
    move-object/from16 v41, v9

    const-string v9, "supports_picture_in_picture"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1fa

    const/16 v9, 0x17

    goto/16 :goto_1fb

    :sswitch_142
    move-object/from16 v41, v9

    const-string v9, "auto_remove_recents"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1fa

    const/4 v9, 0x7

    goto/16 :goto_1fb

    :sswitch_14f
    move-object/from16 v41, v9

    const-string v9, "orig_activity"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1fa

    const/4 v9, 0x3

    goto/16 :goto_1fb

    :sswitch_15c
    move-object/from16 v41, v9

    const-string v9, "non_fullscreen_bounds"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1fa

    const/16 v9, 0x18

    goto/16 :goto_1fb

    :sswitch_16a
    move-object/from16 v41, v9

    const-string v9, "min_height"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1fa

    const/16 v9, 0x1a

    goto/16 :goto_1fb

    :sswitch_178
    move-object/from16 v41, v9

    const-string v9, "resize_mode"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1fa

    const/16 v9, 0x16

    goto/16 :goto_1fb

    :sswitch_186
    move-object/from16 v41, v9

    const-string v9, "effective_uid"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1fa

    const/16 v9, 0xb

    goto/16 :goto_1fb

    :sswitch_194
    move-object/from16 v41, v9

    const-string v9, "user_setup_complete"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1fa

    const/16 v9, 0xa

    goto :goto_1fb

    :sswitch_1a1
    move-object/from16 v41, v9

    const-string v9, "task_affiliation"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1fa

    const/16 v9, 0x10

    goto :goto_1fb

    :sswitch_1ae
    move-object/from16 v41, v9

    const-string v9, "real_activity_suspended"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1fa

    const/4 v9, 0x2

    goto :goto_1fb

    :sswitch_1ba
    move-object/from16 v41, v9

    const-string v9, "task_affiliation_color"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1fa

    const/16 v9, 0x13

    goto :goto_1fb

    :sswitch_1c7
    move-object/from16 v41, v9

    const-string v9, "next_affiliation"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1fa

    const/16 v9, 0x12

    goto :goto_1fb

    :sswitch_1d4
    move-object/from16 v41, v9

    const-string v9, "task_id"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1fa

    const/4 v9, 0x0

    goto :goto_1fb

    :sswitch_1e0
    move-object/from16 v41, v9

    const-string v9, "last_time_moved"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1fa

    const/16 v9, 0xe

    goto :goto_1fb

    :sswitch_1ed
    move-object/from16 v41, v9

    const-string v9, "asked_compat_mode"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1fa

    const/16 v9, 0x8

    goto :goto_1fb

    :cond_1fa
    :goto_1fa
    const/4 v9, -0x1

    :goto_1fb
    packed-switch v9, :pswitch_data_4e4

    .line 2888
    const/4 v9, -0x1

    const-string v9, "task_description_"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_321

    .line 2889
    invoke-virtual {v14, v5, v12}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_335

    .line 2885
    :pswitch_20c  #0x1b
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2886
    move-object/from16 v12, v40

    move-object/from16 v9, v41

    goto/16 :goto_339

    .line 2882
    :pswitch_216  #0x1a
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    .line 2883
    move-object/from16 v12, v40

    move-object/from16 v9, v41

    goto/16 :goto_339

    .line 2879
    :pswitch_220  #0x19
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    .line 2880
    move-object/from16 v12, v40

    move-object/from16 v9, v41

    goto/16 :goto_339

    .line 2876
    :pswitch_22a  #0x18
    invoke-static {v12}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v5

    .line 2877
    move-object/from16 v32, v5

    move-object/from16 v12, v40

    move-object/from16 v9, v41

    goto/16 :goto_339

    .line 2873
    :pswitch_236  #0x17
    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 2874
    move/from16 v19, v5

    move-object/from16 v12, v40

    move-object/from16 v9, v41

    goto/16 :goto_339

    .line 2870
    :pswitch_242  #0x16
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2871
    move-object/from16 v12, v40

    move-object/from16 v9, v41

    goto/16 :goto_339

    .line 2867
    :pswitch_24c  #0x15
    nop

    .line 2868
    move-object/from16 v27, v12

    move-object/from16 v12, v40

    move-object/from16 v9, v41

    goto/16 :goto_339

    .line 2864
    :pswitch_255  #0x14
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 2865
    move-object/from16 v12, v40

    move-object/from16 v9, v41

    goto/16 :goto_339

    .line 2861
    :pswitch_25f  #0x13
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 2862
    move-object/from16 v12, v40

    move-object/from16 v9, v41

    goto/16 :goto_339

    .line 2858
    :pswitch_269  #0x12
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 2859
    move-object/from16 v12, v40

    move-object/from16 v9, v41

    goto/16 :goto_339

    .line 2855
    :pswitch_273  #0x11
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 2856
    move-object/from16 v12, v40

    move-object/from16 v9, v41

    goto/16 :goto_339

    .line 2852
    :pswitch_27d  #0x10
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 2853
    move-object/from16 v12, v40

    move-object/from16 v9, v41

    goto/16 :goto_339

    .line 2849
    :pswitch_287  #0xf
    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v18

    .line 2850
    move-object/from16 v12, v40

    move-object/from16 v9, v41

    goto/16 :goto_339

    .line 2846
    :pswitch_291  #0xe
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    .line 2847
    move-object/from16 v12, v40

    move-object/from16 v9, v41

    goto/16 :goto_339

    .line 2843
    :pswitch_29b  #0xd
    nop

    .line 2844
    move-object/from16 v26, v12

    move-object/from16 v12, v40

    move-object/from16 v9, v41

    goto/16 :goto_339

    .line 2840
    :pswitch_2a4  #0xc
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2841
    move v6, v5

    move-object/from16 v12, v40

    move-object/from16 v9, v41

    goto/16 :goto_339

    .line 2837
    :pswitch_2af  #0xb
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2838
    move v11, v5

    move-object/from16 v12, v40

    move-object/from16 v9, v41

    goto/16 :goto_339

    .line 2834
    :pswitch_2ba  #0xa
    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v39

    .line 2835
    move-object/from16 v12, v40

    move-object/from16 v9, v41

    goto/16 :goto_339

    .line 2831
    :pswitch_2c4  #0x9
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    .line 2832
    move-object/from16 v12, v40

    move-object/from16 v9, v41

    goto/16 :goto_339

    .line 2828
    :pswitch_2ce  #0x8
    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v36

    .line 2829
    move-object/from16 v12, v40

    move-object/from16 v9, v41

    goto/16 :goto_339

    .line 2825
    :pswitch_2d8  #0x7
    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v35

    .line 2826
    move-object/from16 v12, v40

    move-object/from16 v9, v41

    goto :goto_339

    .line 2822
    :pswitch_2e1  #0x6
    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v34

    .line 2823
    move-object/from16 v12, v40

    move-object/from16 v9, v41

    goto :goto_339

    .line 2818
    :pswitch_2ea  #0x5
    nop

    .line 2819
    nop

    .line 2820
    move-object v10, v12

    move-object/from16 v12, v40

    move-object/from16 v9, v41

    const/4 v8, 0x1

    goto :goto_339

    .line 2815
    :pswitch_2f3  #0x4
    nop

    .line 2816
    move-object v9, v12

    move-object/from16 v12, v40

    goto :goto_339

    .line 2812
    :pswitch_2f8  #0x3
    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v16

    .line 2813
    move-object/from16 v12, v40

    move-object/from16 v9, v41

    goto :goto_339

    .line 2809
    :pswitch_301  #0x2
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    .line 2810
    move-object/from16 v12, v40

    move-object/from16 v9, v41

    goto :goto_339

    .line 2806
    :pswitch_30e  #0x1
    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    .line 2807
    move-object/from16 v9, v41

    goto :goto_339

    .line 2803
    :pswitch_315  #0x0
    const/4 v9, -0x1

    if-ne v7, v9, :cond_335

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v12, v40

    move-object/from16 v9, v41

    goto :goto_339

    .line 2891
    :cond_321
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TaskRecord: Unknown attribute="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2796
    :cond_335
    :goto_335
    move-object/from16 v12, v40

    move-object/from16 v9, v41

    :goto_339
    add-int/lit8 v2, v2, -0x1

    const/4 v13, 0x1

    goto/16 :goto_69

    :cond_33e
    move-object/from16 v41, v9

    move-object/from16 v40, v12

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 2897
    :goto_344
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v12, 0x1

    if-eq v2, v12, :cond_39b

    const/4 v12, 0x3

    if-ne v2, v12, :cond_358

    .line 2898
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    if-lt v12, v1, :cond_355

    goto :goto_358

    :cond_355
    move-object/from16 v12, p0

    goto :goto_39d

    .line 2899
    :cond_358
    :goto_358
    const/4 v12, 0x2

    if-ne v2, v12, :cond_398

    .line 2900
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2903
    const-string v12, "affinity_intent"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_36e

    .line 2904
    invoke-static/range {p1 .. p1}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v9

    move-object/from16 v12, p0

    goto :goto_397

    .line 2905
    :cond_36e
    const-string v12, "intent"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_37d

    .line 2906
    invoke-static/range {p1 .. p1}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v5

    move-object/from16 v12, p0

    goto :goto_397

    .line 2907
    :cond_37d
    const-string v12, "activity"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_392

    .line 2908
    nop

    .line 2909
    invoke-static/range {p1 .. p2}, Lcom/android/server/wm/ActivityRecord;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wm/ActivityStackSupervisor;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 2912
    if-eqz v2, :cond_38f

    .line 2913
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2915
    :cond_38f
    move-object/from16 v12, p0

    goto :goto_397

    .line 2916
    :cond_392
    move-object/from16 v12, p0

    invoke-virtual {v12, v2, v0}, Lcom/android/server/wm/TaskRecord$TaskRecordFactory;->handleUnknownTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2918
    :goto_397
    goto :goto_344

    .line 2899
    :cond_398
    move-object/from16 v12, p0

    goto :goto_344

    .line 2897
    :cond_39b
    move-object/from16 v12, p0

    .line 2920
    :goto_39d
    if-nez v8, :cond_3a2

    .line 2921
    move-object/from16 v25, v41

    goto :goto_3af

    .line 2922
    :cond_3a2
    const-string v0, "@"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3ad

    .line 2923
    const/16 v25, 0x0

    goto :goto_3af

    .line 2922
    :cond_3ad
    move-object/from16 v25, v10

    .line 2925
    :goto_3af
    if-gtz v11, :cond_404

    .line 2926
    if-eqz v5, :cond_3b5

    move-object v1, v5

    goto :goto_3b6

    :cond_3b5
    move-object v1, v9

    .line 2927
    :goto_3b6
    nop

    .line 2928
    if-eqz v1, :cond_3db

    .line 2929
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 2931
    nop

    .line 2932
    :try_start_3be
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2
    :try_end_3c6
    .catch Landroid/os/RemoteException; {:try_start_3be .. :try_end_3c6} :catch_3d7

    const/16 v8, 0x2200

    .line 2931
    move/from16 v10, v38

    :try_start_3ca
    invoke-interface {v0, v2, v8, v10}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2935
    if-eqz v0, :cond_3d3

    .line 2936
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_3d2
    .catch Landroid/os/RemoteException; {:try_start_3ca .. :try_end_3d2} :catch_3d5

    goto :goto_3d4

    .line 2935
    :cond_3d3
    const/4 v0, 0x0

    .line 2939
    :goto_3d4
    goto :goto_3de

    .line 2938
    :catch_3d5
    move-exception v0

    goto :goto_3dd

    :catch_3d7
    move-exception v0

    move/from16 v10, v38

    goto :goto_3dd

    .line 2928
    :cond_3db
    move/from16 v10, v38

    .line 2941
    :goto_3dd
    const/4 v0, 0x0

    :goto_3de
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updating task #"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " for "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": effectiveUid="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v13, v0

    goto :goto_407

    .line 2925
    :cond_404
    move/from16 v10, v38

    move v13, v11

    .line 2945
    :goto_407
    const/4 v11, 0x1

    if-ge v4, v11, :cond_414

    .line 2950
    if-ne v6, v11, :cond_41e

    const/4 v1, 0x2

    if-ne v3, v1, :cond_41e

    .line 2951
    move/from16 v37, v11

    move/from16 v38, v19

    goto :goto_422

    .line 2958
    :cond_414
    const/4 v1, 0x2

    const/4 v2, 0x3

    if-ne v3, v2, :cond_41e

    .line 2959
    nop

    .line 2960
    move/from16 v37, v1

    move/from16 v38, v11

    goto :goto_422

    .line 2964
    :cond_41e
    move/from16 v37, v3

    move/from16 v38, v19

    :goto_422
    move-object/from16 v1, p2

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    move-object/from16 v0, p0

    move v2, v7

    move-object v3, v5

    move-object v4, v9

    move-object/from16 v5, v41

    move-object/from16 v6, v25

    move-object/from16 v7, v40

    move-object/from16 v8, v16

    move/from16 v9, v34

    move v12, v10

    move/from16 v10, v35

    move/from16 v16, v11

    move/from16 v11, v36

    move/from16 v34, v16

    move-object/from16 v19, v14

    move-object/from16 v14, v26

    move-object/from16 p0, v15

    move-wide/from16 v16, v28

    move-object/from16 v25, v27

    move/from16 v26, v37

    move/from16 v27, v38

    move/from16 v28, v33

    move/from16 v29, v39

    invoke-virtual/range {v0 .. v31}, Lcom/android/server/wm/TaskRecord$TaskRecordFactory;->create(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;Ljava/util/ArrayList;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;IZZZII)Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 2972
    move-object/from16 v4, v32

    iput-object v4, v0, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 2973
    invoke-virtual {v0, v4}, Lcom/android/server/wm/TaskRecord;->setBounds(Landroid/graphics/Rect;)I

    .line 2975
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_461
    if-ltz v1, :cond_471

    .line 2976
    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/ActivityRecord;->setTask(Lcom/android/server/wm/TaskRecord;)V

    .line 2975
    add-int/lit8 v1, v1, -0x1

    goto :goto_461

    .line 2980
    :cond_471
    return-object v0

    :sswitch_data_472
    .sparse-switch
        -0x7f3eb8a7 -> :sswitch_1ed
        -0x5ccdaff6 -> :sswitch_1e0
        -0x5ba06deb -> :sswitch_1d4
        -0x591a685c -> :sswitch_1c7
        -0x4d0e36e6 -> :sswitch_1ba
        -0x43dc2f14 -> :sswitch_1ae
        -0x430d08ca -> :sswitch_1a1
        -0x3a0f4851 -> :sswitch_194
        -0x37680e48 -> :sswitch_186
        -0x3395d9b2 -> :sswitch_178
        -0x313f784c -> :sswitch_16a
        -0x2a27c539 -> :sswitch_15c
        -0x2a0990b3 -> :sswitch_14f
        -0x1df202b3 -> :sswitch_142
        -0x158140a0 -> :sswitch_134
        -0x9b3481b -> :sswitch_127
        -0x8c511f1 -> :sswitch_119
        -0x7e175ab -> :sswitch_10b
        0xac8bdb4 -> :sswitch_fd
        0x13bdcee4 -> :sswitch_ef
        0x2046b199 -> :sswitch_e1
        0x24172928 -> :sswitch_d4
        0x33cf43d3 -> :sswitch_c6
        0x3c12eca9 -> :sswitch_b8
        0x40756fcb -> :sswitch_aa
        0x56e1584e -> :sswitch_9c
        0x5bc3bc90 -> :sswitch_8f
        0x789a804d -> :sswitch_82
    .end sparse-switch

    :pswitch_data_4e4
    .packed-switch 0x0
        :pswitch_315  #00000000
        :pswitch_30e  #00000001
        :pswitch_301  #00000002
        :pswitch_2f8  #00000003
        :pswitch_2f3  #00000004
        :pswitch_2ea  #00000005
        :pswitch_2e1  #00000006
        :pswitch_2d8  #00000007
        :pswitch_2ce  #00000008
        :pswitch_2c4  #00000009
        :pswitch_2ba  #0000000a
        :pswitch_2af  #0000000b
        :pswitch_2a4  #0000000c
        :pswitch_29b  #0000000d
        :pswitch_291  #0000000e
        :pswitch_287  #0000000f
        :pswitch_27d  #00000010
        :pswitch_273  #00000011
        :pswitch_269  #00000012
        :pswitch_25f  #00000013
        :pswitch_255  #00000014
        :pswitch_24c  #00000015
        :pswitch_242  #00000016
        :pswitch_236  #00000017
        :pswitch_22a  #00000018
        :pswitch_220  #00000019
        :pswitch_216  #0000001a
        :pswitch_20c  #0000001b
    .end packed-switch
.end method
