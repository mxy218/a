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

    .line 2755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method create(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;Ljava/util/ArrayList;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;IZZZII)Lcom/android/server/wm/TaskRecord;
    .registers 65
    .param p1, "service"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "taskId"  # I
    .param p3, "intent"  # Landroid/content/Intent;
    .param p4, "affinityIntent"  # Landroid/content/Intent;
    .param p5, "affinity"  # Ljava/lang/String;
    .param p6, "rootAffinity"  # Ljava/lang/String;
    .param p7, "realActivity"  # Landroid/content/ComponentName;
    .param p8, "origActivity"  # Landroid/content/ComponentName;
    .param p9, "rootWasReset"  # Z
    .param p10, "autoRemoveRecents"  # Z
    .param p11, "askedCompatMode"  # Z
    .param p12, "userId"  # I
    .param p13, "effectiveUid"  # I
    .param p14, "lastDescription"  # Ljava/lang/String;
    .param p16, "lastTimeMoved"  # J
    .param p18, "neverRelinquishIdentity"  # Z
    .param p19, "lastTaskDescription"  # Landroid/app/ActivityManager$TaskDescription;
    .param p20, "taskAffiliation"  # I
    .param p21, "prevTaskId"  # I
    .param p22, "nextTaskId"  # I
    .param p23, "taskAffiliationColor"  # I
    .param p24, "callingUid"  # I
    .param p25, "callingPackage"  # Ljava/lang/String;
    .param p26, "resizeMode"  # I
    .param p27, "supportsPictureInPicture"  # Z
    .param p28, "realActivitySuspended"  # Z
    .param p29, "userSetupComplete"  # Z
    .param p30, "minWidth"  # I
    .param p31, "minHeight"  # I
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

    .local p15, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
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

    .line 2782
    new-instance v32, Lcom/android/server/wm/TaskRecord;

    move-object/from16 v0, v32

    invoke-direct/range {v0 .. v31}, Lcom/android/server/wm/TaskRecord;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;Ljava/util/ArrayList;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;IZZZII)V

    return-object v32
.end method

.method create(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/TaskRecord;
    .registers 13
    .param p1, "service"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "taskId"  # I
    .param p3, "info"  # Landroid/content/pm/ActivityInfo;
    .param p4, "intent"  # Landroid/content/Intent;
    .param p5, "taskDescription"  # Landroid/app/ActivityManager$TaskDescription;

    .line 2766
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
    .param p1, "service"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "taskId"  # I
    .param p3, "info"  # Landroid/content/pm/ActivityInfo;
    .param p4, "intent"  # Landroid/content/Intent;
    .param p5, "voiceSession"  # Landroid/service/voice/IVoiceInteractionSession;
    .param p6, "voiceInteractor"  # Lcom/android/internal/app/IVoiceInteractor;

    .line 2760
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
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "in"  # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 3041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreTask: Unexpected name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3042
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3043
    return-void
.end method

.method restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wm/ActivityStackSupervisor;)Lcom/android/server/wm/TaskRecord;
    .registers 73
    .param p1, "in"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "stackSupervisor"  # Lcom/android/server/wm/ActivityStackSupervisor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2793
    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 2794
    .local v2, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 2795
    .local v3, "affinityIntent":Landroid/content/Intent;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 2796
    .local v15, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v0, 0x0

    .line 2797
    .local v0, "realActivity":Landroid/content/ComponentName;
    const/4 v4, 0x0

    .line 2798
    .local v4, "realActivitySuspended":Z
    const/4 v5, 0x0

    .line 2799
    .local v5, "origActivity":Landroid/content/ComponentName;
    const/4 v6, 0x0

    .line 2800
    .local v6, "affinity":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2801
    .local v7, "rootAffinity":Ljava/lang/String;
    const/4 v8, 0x0

    .line 2802
    .local v8, "hasRootAffinity":Z
    const/4 v9, 0x0

    .line 2803
    .local v9, "rootHasReset":Z
    const/4 v10, 0x0

    .line 2804
    .local v10, "autoRemoveRecents":Z
    const/4 v11, 0x0

    .line 2805
    .local v11, "askedCompatMode":Z
    const/4 v12, 0x0

    .line 2806
    .local v12, "taskType":I
    const/4 v13, 0x0

    .line 2807
    .local v13, "userId":I
    const/4 v14, 0x1

    .line 2808
    .local v14, "userSetupComplete":Z
    const/16 v16, -0x1

    .line 2809
    .local v16, "effectiveUid":I
    const/16 v17, 0x0

    .line 2810
    .local v17, "lastDescription":Ljava/lang/String;
    const-wide/16 v18, 0x0

    .line 2811
    .local v18, "lastTimeOnTop":J
    const/16 v20, 0x1

    .line 2812
    .local v20, "neverRelinquishIdentity":Z
    const/16 v21, -0x1

    .line 2813
    .local v21, "taskId":I
    move-object/from16 v22, v2

    .end local v2  # "intent":Landroid/content/Intent;
    .local v22, "intent":Landroid/content/Intent;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 2814
    .local v2, "outerDepth":I
    new-instance v23, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct/range {v23 .. v23}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    move-object/from16 v36, v23

    .line 2815
    .local v36, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    const/16 v23, -0x1

    .line 2816
    .local v23, "taskAffiliation":I
    const/16 v24, 0x0

    .line 2817
    .local v24, "taskAffiliationColor":I
    const/16 v25, -0x1

    .line 2818
    .local v25, "prevTaskId":I
    const/16 v26, -0x1

    .line 2819
    .local v26, "nextTaskId":I
    const/16 v27, -0x1

    .line 2820
    .local v27, "callingUid":I
    const-string v28, ""

    .line 2821
    .local v28, "callingPackage":Ljava/lang/String;
    const/16 v29, 0x4

    .line 2822
    .local v29, "resizeMode":I
    const/16 v30, 0x0

    .line 2823
    .local v30, "supportsPictureInPicture":Z
    const/16 v31, 0x0

    .line 2824
    .local v31, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    const/16 v32, -0x1

    .line 2825
    .local v32, "minWidth":I
    const/16 v33, -0x1

    .line 2826
    .local v33, "minHeight":I
    const/16 v34, 0x0

    .line 2828
    .local v34, "persistTaskVersion":I
    const/16 v35, 0x0

    .line 2831
    .local v35, "invisibleFlag":I
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v37

    move-object/from16 v38, v3

    .end local v3  # "affinityIntent":Landroid/content/Intent;
    .local v38, "affinityIntent":Landroid/content/Intent;
    const/4 v3, 0x1

    add-int/lit8 v37, v37, -0x1

    move-object/from16 v40, v0

    move/from16 v54, v4

    move-object/from16 v41, v5

    move-object/from16 v42, v6

    move/from16 v55, v8

    move/from16 v56, v9

    move/from16 v57, v10

    move/from16 v58, v11

    move v10, v12

    move v9, v13

    move-object/from16 v49, v17

    move-wide/from16 v52, v18

    move/from16 v39, v20

    move/from16 v43, v23

    move/from16 v44, v24

    move/from16 v45, v25

    move/from16 v46, v26

    move/from16 v47, v27

    move-object/from16 v51, v28

    move/from16 v5, v29

    move-object/from16 v11, v31

    move/from16 v48, v32

    move/from16 v50, v33

    move/from16 v13, v34

    move/from16 v12, v35

    move/from16 v4, v37

    move/from16 v37, v14

    move/from16 v14, v21

    .end local v0  # "realActivity":Landroid/content/ComponentName;
    .end local v6  # "affinity":Ljava/lang/String;
    .end local v8  # "hasRootAffinity":Z
    .end local v17  # "lastDescription":Ljava/lang/String;
    .end local v18  # "lastTimeOnTop":J
    .end local v20  # "neverRelinquishIdentity":Z
    .end local v21  # "taskId":I
    .end local v23  # "taskAffiliation":I
    .end local v24  # "taskAffiliationColor":I
    .end local v25  # "prevTaskId":I
    .end local v26  # "nextTaskId":I
    .end local v27  # "callingUid":I
    .end local v28  # "callingPackage":Ljava/lang/String;
    .end local v29  # "resizeMode":I
    .end local v31  # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .end local v32  # "minWidth":I
    .end local v33  # "minHeight":I
    .end local v34  # "persistTaskVersion":I
    .end local v35  # "invisibleFlag":I
    .local v4, "attrNdx":I
    .local v5, "resizeMode":I
    .local v9, "userId":I
    .local v10, "taskType":I
    .local v11, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .local v12, "invisibleFlag":I
    .local v13, "persistTaskVersion":I
    .local v14, "taskId":I
    .local v37, "userSetupComplete":Z
    .local v39, "neverRelinquishIdentity":Z
    .local v40, "realActivity":Landroid/content/ComponentName;
    .local v41, "origActivity":Landroid/content/ComponentName;
    .local v42, "affinity":Ljava/lang/String;
    .local v43, "taskAffiliation":I
    .local v44, "taskAffiliationColor":I
    .local v45, "prevTaskId":I
    .local v46, "nextTaskId":I
    .local v47, "callingUid":I
    .local v48, "minWidth":I
    .local v49, "lastDescription":Ljava/lang/String;
    .local v50, "minHeight":I
    .local v51, "callingPackage":Ljava/lang/String;
    .local v52, "lastTimeOnTop":J
    .local v54, "realActivitySuspended":Z
    .local v55, "hasRootAffinity":Z
    .local v56, "rootHasReset":Z
    .local v57, "autoRemoveRecents":Z
    .local v58, "askedCompatMode":Z
    :goto_86
    const-string v0, "TaskPersister"

    const-string v6, "ActivityTaskManager"

    if-ltz v4, :cond_3a9

    .line 2832
    invoke-interface {v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    .line 2833
    .local v8, "attrName":Ljava/lang/String;
    invoke-interface {v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 2834
    .local v3, "attrValue":Ljava/lang/String;
    move-object/from16 v19, v11

    .end local v11  # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .local v19, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v12

    .end local v12  # "invisibleFlag":I
    .local v20, "invisibleFlag":I
    const-string v12, "TaskRecord: attribute name="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " value="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2836
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v12, -0x1

    sparse-switch v0, :sswitch_data_562

    :cond_bc
    goto/16 :goto_209

    :sswitch_be
    const-string v0, "root_has_reset"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const/4 v0, 0x6

    goto/16 :goto_20a

    :sswitch_c9
    const-string v0, "real_activity"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const/4 v0, 0x1

    goto/16 :goto_20a

    :sswitch_d4
    const-string v0, "never_relinquish_identity"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const/16 v0, 0xf

    goto/16 :goto_20a

    :sswitch_e0
    const-string v0, "calling_package"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const/16 v0, 0x15

    goto/16 :goto_20a

    :sswitch_ec
    const-string v0, "persist_task_version"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const/16 v0, 0x1b

    goto/16 :goto_20a

    :sswitch_f8
    const-string v0, "last_description"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const/16 v0, 0xd

    goto/16 :goto_20a

    :sswitch_104
    const-string v0, "affinity"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const/4 v0, 0x4

    goto/16 :goto_20a

    :sswitch_10f
    const-string v0, "min_width"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const/16 v0, 0x19

    goto/16 :goto_20a

    :sswitch_11b
    const-string v0, "prev_affiliation"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const/16 v0, 0x11

    goto/16 :goto_20a

    :sswitch_127
    const-string v0, "invisible_flag"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const/16 v0, 0x1c

    goto/16 :goto_20a

    :sswitch_133
    const-string v0, "task_type"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const/16 v0, 0xc

    goto/16 :goto_20a

    :sswitch_13f
    const-string v0, "calling_uid"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const/16 v0, 0x14

    goto/16 :goto_20a

    :sswitch_14b
    const-string v0, "user_id"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const/16 v0, 0x9

    goto/16 :goto_20a

    :sswitch_157
    const-string v0, "root_affinity"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const/4 v0, 0x5

    goto/16 :goto_20a

    :sswitch_162
    const-string v0, "supports_picture_in_picture"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const/16 v0, 0x17

    goto/16 :goto_20a

    :sswitch_16e
    const-string v0, "auto_remove_recents"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const/4 v0, 0x7

    goto/16 :goto_20a

    :sswitch_179
    const-string v0, "orig_activity"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const/4 v0, 0x3

    goto/16 :goto_20a

    :sswitch_184
    const-string v0, "non_fullscreen_bounds"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const/16 v0, 0x18

    goto/16 :goto_20a

    :sswitch_190
    const-string v0, "min_height"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const/16 v0, 0x1a

    goto/16 :goto_20a

    :sswitch_19c
    const-string v0, "resize_mode"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const/16 v0, 0x16

    goto/16 :goto_20a

    :sswitch_1a8
    const-string v0, "effective_uid"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const/16 v0, 0xb

    goto :goto_20a

    :sswitch_1b3
    const-string v0, "user_setup_complete"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const/16 v0, 0xa

    goto :goto_20a

    :sswitch_1be
    const-string v0, "task_affiliation"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const/16 v0, 0x10

    goto :goto_20a

    :sswitch_1c9
    const-string v0, "real_activity_suspended"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const/4 v0, 0x2

    goto :goto_20a

    :sswitch_1d3
    const-string v0, "task_affiliation_color"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const/16 v0, 0x13

    goto :goto_20a

    :sswitch_1de
    const-string v0, "next_affiliation"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const/16 v0, 0x12

    goto :goto_20a

    :sswitch_1e9
    const-string v0, "task_id"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const/4 v0, 0x0

    goto :goto_20a

    :sswitch_1f3
    const-string v0, "last_time_moved"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const/16 v0, 0xe

    goto :goto_20a

    :sswitch_1fe
    const-string v0, "asked_compat_mode"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const/16 v0, 0x8

    goto :goto_20a

    :goto_209
    move v0, v12

    :goto_20a
    packed-switch v0, :pswitch_data_5d8

    .line 2928
    const-string v0, "task_description_"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_349

    .line 2929
    move-object/from16 v12, v36

    .end local v36  # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v12, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    invoke-virtual {v12, v8, v3}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_39e

    .line 2924
    .end local v12  # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v36  # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    :pswitch_21c  #0x1c
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2925
    .end local v20  # "invisibleFlag":I
    .local v0, "invisibleFlag":I
    move/from16 v20, v0

    move-object/from16 v11, v19

    move-object/from16 v12, v36

    goto/16 :goto_3a0

    .line 2920
    .end local v0  # "invisibleFlag":I
    .restart local v20  # "invisibleFlag":I
    :pswitch_228  #0x1b
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2921
    .end local v13  # "persistTaskVersion":I
    .local v0, "persistTaskVersion":I
    move v13, v0

    move-object/from16 v11, v19

    move-object/from16 v12, v36

    goto/16 :goto_3a0

    .line 2917
    .end local v0  # "persistTaskVersion":I
    .restart local v13  # "persistTaskVersion":I
    :pswitch_233  #0x1a
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v50

    .line 2918
    move-object/from16 v11, v19

    move-object/from16 v12, v36

    goto/16 :goto_3a0

    .line 2914
    :pswitch_23d  #0x19
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v48

    .line 2915
    move-object/from16 v11, v19

    move-object/from16 v12, v36

    goto/16 :goto_3a0

    .line 2911
    :pswitch_247  #0x18
    invoke-static {v3}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0

    .line 2912
    .end local v19  # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .local v0, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    move-object v11, v0

    move-object/from16 v12, v36

    goto/16 :goto_3a0

    .line 2908
    .end local v0  # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .restart local v19  # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    :pswitch_250  #0x17
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2909
    .end local v30  # "supportsPictureInPicture":Z
    .local v0, "supportsPictureInPicture":Z
    move/from16 v30, v0

    move-object/from16 v11, v19

    move-object/from16 v12, v36

    goto/16 :goto_3a0

    .line 2905
    .end local v0  # "supportsPictureInPicture":Z
    .restart local v30  # "supportsPictureInPicture":Z
    :pswitch_25c  #0x16
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2906
    .end local v5  # "resizeMode":I
    .local v0, "resizeMode":I
    move v5, v0

    move-object/from16 v11, v19

    move-object/from16 v12, v36

    goto/16 :goto_3a0

    .line 2902
    .end local v0  # "resizeMode":I
    .restart local v5  # "resizeMode":I
    :pswitch_267  #0x15
    move-object/from16 v51, v3

    .line 2903
    move-object/from16 v11, v19

    move-object/from16 v12, v36

    goto/16 :goto_3a0

    .line 2899
    :pswitch_26f  #0x14
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v47

    .line 2900
    move-object/from16 v11, v19

    move-object/from16 v12, v36

    goto/16 :goto_3a0

    .line 2896
    :pswitch_279  #0x13
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v44

    .line 2897
    move-object/from16 v11, v19

    move-object/from16 v12, v36

    goto/16 :goto_3a0

    .line 2893
    :pswitch_283  #0x12
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v46

    .line 2894
    move-object/from16 v11, v19

    move-object/from16 v12, v36

    goto/16 :goto_3a0

    .line 2890
    :pswitch_28d  #0x11
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v45

    .line 2891
    move-object/from16 v11, v19

    move-object/from16 v12, v36

    goto/16 :goto_3a0

    .line 2887
    :pswitch_297  #0x10
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v43

    .line 2888
    move-object/from16 v11, v19

    move-object/from16 v12, v36

    goto/16 :goto_3a0

    .line 2884
    :pswitch_2a1  #0xf
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v39

    .line 2885
    move-object/from16 v11, v19

    move-object/from16 v12, v36

    goto/16 :goto_3a0

    .line 2881
    :pswitch_2ab  #0xe
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v52

    .line 2882
    move-object/from16 v11, v19

    move-object/from16 v12, v36

    goto/16 :goto_3a0

    .line 2878
    :pswitch_2b5  #0xd
    move-object/from16 v49, v3

    .line 2879
    move-object/from16 v11, v19

    move-object/from16 v12, v36

    goto/16 :goto_3a0

    .line 2875
    :pswitch_2bd  #0xc
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2876
    .end local v10  # "taskType":I
    .local v0, "taskType":I
    move v10, v0

    move-object/from16 v11, v19

    move-object/from16 v12, v36

    goto/16 :goto_3a0

    .line 2872
    .end local v0  # "taskType":I
    .restart local v10  # "taskType":I
    :pswitch_2c8  #0xb
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2873
    .end local v16  # "effectiveUid":I
    .local v0, "effectiveUid":I
    move/from16 v16, v0

    move-object/from16 v11, v19

    move-object/from16 v12, v36

    goto/16 :goto_3a0

    .line 2869
    .end local v0  # "effectiveUid":I
    .restart local v16  # "effectiveUid":I
    :pswitch_2d4  #0xa
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v37

    .line 2870
    move-object/from16 v11, v19

    move-object/from16 v12, v36

    goto/16 :goto_3a0

    .line 2866
    :pswitch_2de  #0x9
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 2867
    move-object/from16 v11, v19

    move-object/from16 v12, v36

    goto/16 :goto_3a0

    .line 2863
    :pswitch_2e8  #0x8
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    .line 2864
    move-object/from16 v11, v19

    move-object/from16 v12, v36

    goto/16 :goto_3a0

    .line 2860
    :pswitch_2f2  #0x7
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v57

    .line 2861
    move-object/from16 v11, v19

    move-object/from16 v12, v36

    goto/16 :goto_3a0

    .line 2857
    :pswitch_2fc  #0x6
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v56

    .line 2858
    move-object/from16 v11, v19

    move-object/from16 v12, v36

    goto/16 :goto_3a0

    .line 2853
    :pswitch_306  #0x5
    move-object v0, v3

    .line 2854
    .end local v7  # "rootAffinity":Ljava/lang/String;
    .local v0, "rootAffinity":Ljava/lang/String;
    const/4 v6, 0x1

    .line 2855
    .end local v55  # "hasRootAffinity":Z
    .local v6, "hasRootAffinity":Z
    move-object v7, v0

    move/from16 v55, v6

    move-object/from16 v11, v19

    move-object/from16 v12, v36

    goto/16 :goto_3a0

    .line 2850
    .end local v0  # "rootAffinity":Ljava/lang/String;
    .end local v6  # "hasRootAffinity":Z
    .restart local v7  # "rootAffinity":Ljava/lang/String;
    .restart local v55  # "hasRootAffinity":Z
    :pswitch_311  #0x4
    move-object/from16 v42, v3

    .line 2851
    move-object/from16 v11, v19

    move-object/from16 v12, v36

    goto/16 :goto_3a0

    .line 2847
    :pswitch_319  #0x3
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v41

    .line 2848
    move-object/from16 v11, v19

    move-object/from16 v12, v36

    goto/16 :goto_3a0

    .line 2844
    :pswitch_323  #0x2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v54

    .line 2845
    move-object/from16 v11, v19

    move-object/from16 v12, v36

    goto/16 :goto_3a0

    .line 2841
    :pswitch_331  #0x1
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v40

    .line 2842
    move-object/from16 v11, v19

    move-object/from16 v12, v36

    goto/16 :goto_3a0

    .line 2838
    :pswitch_33b  #0x0
    if-ne v14, v12, :cond_346

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v11, v19

    move-object/from16 v12, v36

    goto :goto_3a0

    :cond_346
    move-object/from16 v12, v36

    goto :goto_39e

    .line 2931
    :cond_349
    move-object/from16 v12, v36

    .end local v36  # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v12  # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TaskRecord: Unknown attribute="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2933
    const-string v11, "cloneId"

    .line 2934
    .local v11, "ATTR_CLONEID":Ljava/lang/String;
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39a

    .line 2935
    const/16 v17, 0x0

    .line 2937
    .local v17, "cloneId":I
    const/16 v0, 0xa

    :try_start_36b
    invoke-static {v3, v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_373
    .catch Ljava/lang/Exception; {:try_start_36b .. :try_end_373} :catch_376

    move/from16 v17, v0

    .line 2938
    goto :goto_379

    :catch_376
    move-exception v0

    move/from16 v0, v17

    .line 2939
    .end local v17  # "cloneId":I
    .local v0, "cloneId":I
    :goto_379
    if-eqz v0, :cond_395

    .line 2940
    move-object/from16 v21, v3

    .end local v3  # "attrValue":Ljava/lang/String;
    .local v21, "attrValue":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v8

    .end local v8  # "attrName":Ljava/lang/String;
    .local v23, "attrName":Ljava/lang/String;
    const-string v8, "mo2-tr : pass old version taskRecord! code:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2941
    const/4 v3, 0x0

    return-object v3

    .line 2939
    .end local v21  # "attrValue":Ljava/lang/String;
    .end local v23  # "attrName":Ljava/lang/String;
    .restart local v3  # "attrValue":Ljava/lang/String;
    .restart local v8  # "attrName":Ljava/lang/String;
    :cond_395
    move-object/from16 v21, v3

    move-object/from16 v23, v8

    .end local v3  # "attrValue":Ljava/lang/String;
    .end local v8  # "attrName":Ljava/lang/String;
    .restart local v21  # "attrValue":Ljava/lang/String;
    .restart local v23  # "attrName":Ljava/lang/String;
    goto :goto_39e

    .line 2934
    .end local v0  # "cloneId":I
    .end local v21  # "attrValue":Ljava/lang/String;
    .end local v23  # "attrName":Ljava/lang/String;
    .restart local v3  # "attrValue":Ljava/lang/String;
    .restart local v8  # "attrName":Ljava/lang/String;
    :cond_39a
    move-object/from16 v21, v3

    move-object/from16 v23, v8

    .line 2831
    .end local v3  # "attrValue":Ljava/lang/String;
    .end local v8  # "attrName":Ljava/lang/String;
    .end local v11  # "ATTR_CLONEID":Ljava/lang/String;
    .end local v12  # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v36  # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    :goto_39e
    move-object/from16 v11, v19

    .end local v19  # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .end local v36  # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v11, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .restart local v12  # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    :goto_3a0
    add-int/lit8 v4, v4, -0x1

    move-object/from16 v36, v12

    move/from16 v12, v20

    const/4 v3, 0x1

    goto/16 :goto_86

    .end local v20  # "invisibleFlag":I
    .local v12, "invisibleFlag":I
    .restart local v36  # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    :cond_3a9
    move-object/from16 v19, v11

    move/from16 v20, v12

    move-object/from16 v12, v36

    .end local v11  # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .end local v36  # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v12, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v19  # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .restart local v20  # "invisibleFlag":I
    move-object/from16 v3, v22

    .line 2950
    .end local v4  # "attrNdx":I
    .end local v22  # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    :goto_3b1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v11, v4

    const/4 v8, 0x1

    .local v11, "event":I
    if-eq v4, v8, :cond_44d

    const/4 v4, 0x3

    if-ne v11, v4, :cond_3cb

    .line 2951
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-lt v4, v2, :cond_3c3

    goto :goto_3cb

    :cond_3c3
    move/from16 v36, v2

    move/from16 v21, v11

    move-object/from16 v2, p0

    goto/16 :goto_453

    .line 2952
    :cond_3cb
    :goto_3cb
    const/4 v4, 0x2

    if-ne v11, v4, :cond_443

    .line 2953
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2954
    .local v4, "name":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v36, v2

    .end local v2  # "outerDepth":I
    .local v36, "outerDepth":I
    const-string v2, "TaskRecord: START_TAG name="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2956
    const-string v2, "affinity_intent"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3fb

    .line 2957
    invoke-static/range {p1 .. p1}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v38, v2

    move/from16 v21, v11

    move-object/from16 v2, p0

    .end local v38  # "affinityIntent":Landroid/content/Intent;
    .local v2, "affinityIntent":Landroid/content/Intent;
    goto :goto_43f

    .line 2958
    .end local v2  # "affinityIntent":Landroid/content/Intent;
    .restart local v38  # "affinityIntent":Landroid/content/Intent;
    :cond_3fb
    const-string v2, "intent"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40d

    .line 2959
    invoke-static/range {p1 .. p1}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v2

    move-object v3, v2

    move/from16 v21, v11

    move-object/from16 v2, p0

    .end local v3  # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    goto :goto_43f

    .line 2960
    .end local v2  # "intent":Landroid/content/Intent;
    .restart local v3  # "intent":Landroid/content/Intent;
    :cond_40d
    const-string v2, "activity"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_438

    .line 2961
    nop

    .line 2962
    invoke-static/range {p1 .. p2}, Lcom/android/server/wm/ActivityRecord;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wm/ActivityStackSupervisor;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 2963
    .local v2, "activity":Lcom/android/server/wm/ActivityRecord;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v11

    .end local v11  # "event":I
    .local v21, "event":I
    const-string v11, "TaskRecord: activity="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2965
    if-eqz v2, :cond_435

    .line 2966
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2968
    .end local v2  # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_435
    move-object/from16 v2, p0

    goto :goto_43f

    .line 2969
    .end local v21  # "event":I
    .restart local v11  # "event":I
    :cond_438
    move/from16 v21, v11

    .end local v11  # "event":I
    .restart local v21  # "event":I
    move-object/from16 v2, p0

    invoke-virtual {v2, v4, v1}, Lcom/android/server/wm/TaskRecord$TaskRecordFactory;->handleUnknownTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2971
    .end local v4  # "name":Ljava/lang/String;
    :goto_43f
    move/from16 v2, v36

    goto/16 :goto_3b1

    .line 2952
    .end local v21  # "event":I
    .end local v36  # "outerDepth":I
    .local v2, "outerDepth":I
    .restart local v11  # "event":I
    :cond_443
    move/from16 v36, v2

    move/from16 v21, v11

    move-object/from16 v2, p0

    .end local v2  # "outerDepth":I
    .end local v11  # "event":I
    .restart local v21  # "event":I
    .restart local v36  # "outerDepth":I
    move/from16 v2, v36

    goto/16 :goto_3b1

    .line 2950
    .end local v21  # "event":I
    .end local v36  # "outerDepth":I
    .restart local v2  # "outerDepth":I
    .restart local v11  # "event":I
    :cond_44d
    move/from16 v36, v2

    move/from16 v21, v11

    move-object/from16 v2, p0

    .line 2973
    .end local v2  # "outerDepth":I
    .end local v11  # "event":I
    .restart local v21  # "event":I
    .restart local v36  # "outerDepth":I
    :goto_453
    if-nez v55, :cond_45a

    .line 2974
    move-object/from16 v0, v42

    move-object/from16 v59, v0

    .end local v7  # "rootAffinity":Ljava/lang/String;
    .local v0, "rootAffinity":Ljava/lang/String;
    goto :goto_468

    .line 2975
    .end local v0  # "rootAffinity":Ljava/lang/String;
    .restart local v7  # "rootAffinity":Ljava/lang/String;
    :cond_45a
    const-string v0, "@"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_466

    .line 2976
    const/4 v0, 0x0

    move-object/from16 v59, v0

    .end local v7  # "rootAffinity":Ljava/lang/String;
    .restart local v0  # "rootAffinity":Ljava/lang/String;
    goto :goto_468

    .line 2975
    .end local v0  # "rootAffinity":Ljava/lang/String;
    .restart local v7  # "rootAffinity":Ljava/lang/String;
    :cond_466
    move-object/from16 v59, v7

    .line 2978
    .end local v7  # "rootAffinity":Ljava/lang/String;
    .local v59, "rootAffinity":Ljava/lang/String;
    :goto_468
    if-gtz v16, :cond_4b4

    .line 2979
    if-eqz v3, :cond_46e

    move-object v0, v3

    goto :goto_470

    :cond_46e
    move-object/from16 v0, v38

    :goto_470
    move-object v4, v0

    .line 2980
    .local v4, "checkIntent":Landroid/content/Intent;
    const/4 v7, 0x0

    .line 2981
    .end local v16  # "effectiveUid":I
    .local v7, "effectiveUid":I
    if-eqz v4, :cond_48e

    .line 2982
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    .line 2984
    .local v8, "pm":Landroid/content/pm/IPackageManager;
    nop

    .line 2985
    :try_start_479
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v11, 0x2200

    .line 2984
    invoke-interface {v8, v0, v11, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2988
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_48c

    .line 2989
    iget v11, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_48b
    .catch Landroid/os/RemoteException; {:try_start_479 .. :try_end_48b} :catch_48d

    move v7, v11

    .line 2992
    .end local v0  # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_48c
    goto :goto_48e

    .line 2991
    :catch_48d
    move-exception v0

    .line 2994
    .end local v8  # "pm":Landroid/content/pm/IPackageManager;
    :cond_48e
    :goto_48e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updating task #"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " for "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": effectiveUid="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    goto :goto_4b6

    .line 2978
    .end local v4  # "checkIntent":Landroid/content/Intent;
    .end local v7  # "effectiveUid":I
    .restart local v16  # "effectiveUid":I
    :cond_4b4
    move/from16 v0, v16

    .line 2998
    .end local v16  # "effectiveUid":I
    .local v0, "effectiveUid":I
    :goto_4b6
    const/4 v4, 0x1

    if-ge v13, v4, :cond_4c4

    .line 3003
    if-ne v10, v4, :cond_4ce

    const/4 v4, 0x2

    if-ne v5, v4, :cond_4ce

    .line 3004
    const/4 v4, 0x1

    move/from16 v60, v4

    move/from16 v61, v30

    .end local v5  # "resizeMode":I
    .local v4, "resizeMode":I
    goto :goto_4d2

    .line 3011
    .end local v4  # "resizeMode":I
    .restart local v5  # "resizeMode":I
    :cond_4c4
    const/4 v4, 0x3

    if-ne v5, v4, :cond_4ce

    .line 3012
    const/4 v4, 0x2

    .line 3013
    .end local v5  # "resizeMode":I
    .restart local v4  # "resizeMode":I
    const/4 v5, 0x1

    move/from16 v60, v4

    move/from16 v61, v5

    .end local v30  # "supportsPictureInPicture":Z
    .local v5, "supportsPictureInPicture":Z
    goto :goto_4d2

    .line 3017
    .end local v4  # "resizeMode":I
    .local v5, "resizeMode":I
    .restart local v30  # "supportsPictureInPicture":Z
    :cond_4ce
    move/from16 v60, v5

    move/from16 v61, v30

    .end local v5  # "resizeMode":I
    .end local v30  # "supportsPictureInPicture":Z
    .local v60, "resizeMode":I
    .local v61, "supportsPictureInPicture":Z
    :goto_4d2
    move-object/from16 v11, p2

    iget-object v5, v11, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    move-object/from16 v4, p0

    move-object v8, v6

    move v6, v14

    move-object v7, v3

    move-object v1, v8

    move-object/from16 v8, v38

    move/from16 v62, v9

    .end local v9  # "userId":I
    .local v62, "userId":I
    move-object/from16 v9, v42

    move/from16 v63, v10

    .end local v10  # "taskType":I
    .local v63, "taskType":I
    move-object/from16 v10, v59

    move-object/from16 v2, v19

    move/from16 v64, v21

    .end local v19  # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .end local v21  # "event":I
    .local v2, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .local v64, "event":I
    move-object/from16 v11, v40

    move-object/from16 v66, v3

    move-object/from16 v65, v12

    move/from16 v3, v20

    .end local v12  # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .end local v20  # "invisibleFlag":I
    .local v3, "invisibleFlag":I
    .local v65, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v66, "intent":Landroid/content/Intent;
    move-object/from16 v12, v41

    move/from16 v67, v13

    .end local v13  # "persistTaskVersion":I
    .local v67, "persistTaskVersion":I
    move/from16 v13, v56

    move/from16 v68, v14

    .end local v14  # "taskId":I
    .local v68, "taskId":I
    move/from16 v14, v57

    move-object/from16 v69, v15

    .end local v15  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .local v69, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    move/from16 v15, v58

    move/from16 v16, v62

    move/from16 v17, v0

    move-object/from16 v18, v49

    move-object/from16 v19, v69

    move-wide/from16 v20, v52

    move/from16 v22, v39

    move-object/from16 v23, v65

    move/from16 v24, v43

    move/from16 v25, v45

    move/from16 v26, v46

    move/from16 v27, v44

    move/from16 v28, v47

    move-object/from16 v29, v51

    move/from16 v30, v60

    move/from16 v31, v61

    move/from16 v32, v54

    move/from16 v33, v37

    move/from16 v34, v48

    move/from16 v35, v50

    invoke-virtual/range {v4 .. v35}, Lcom/android/server/wm/TaskRecord$TaskRecordFactory;->create(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;Ljava/util/ArrayList;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;IZZZII)Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    .line 3025
    .local v4, "task":Lcom/android/server/wm/TaskRecord;
    iput-object v2, v4, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 3026
    invoke-virtual {v4, v2}, Lcom/android/server/wm/TaskRecord;->setBounds(Landroid/graphics/Rect;)I

    .line 3028
    iput v3, v4, Lcom/android/server/wm/TaskRecord;->mInvisibleFlag:I

    .line 3031
    invoke-virtual/range {v69 .. v69}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .local v5, "activityNdx":I
    :goto_537
    if-ltz v5, :cond_547

    .line 3032
    move-object/from16 v6, v69

    .end local v69  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v7, v4}, Lcom/android/server/wm/ActivityRecord;->setTask(Lcom/android/server/wm/TaskRecord;)V

    .line 3031
    add-int/lit8 v5, v5, -0x1

    goto :goto_537

    .end local v6  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local v69  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    :cond_547
    move-object/from16 v6, v69

    .line 3035
    .end local v5  # "activityNdx":I
    .end local v69  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local v6  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v5, :cond_561

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restored task="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3036
    :cond_561
    return-object v4

    :sswitch_data_562
    .sparse-switch
        -0x7f3eb8a7 -> :sswitch_1fe
        -0x5ccdaff6 -> :sswitch_1f3
        -0x5ba06deb -> :sswitch_1e9
        -0x591a685c -> :sswitch_1de
        -0x4d0e36e6 -> :sswitch_1d3
        -0x43dc2f14 -> :sswitch_1c9
        -0x430d08ca -> :sswitch_1be
        -0x3a0f4851 -> :sswitch_1b3
        -0x37680e48 -> :sswitch_1a8
        -0x3395d9b2 -> :sswitch_19c
        -0x313f784c -> :sswitch_190
        -0x2a27c539 -> :sswitch_184
        -0x2a0990b3 -> :sswitch_179
        -0x1df202b3 -> :sswitch_16e
        -0x158140a0 -> :sswitch_162
        -0x9b3481b -> :sswitch_157
        -0x8c511f1 -> :sswitch_14b
        -0x7e175ab -> :sswitch_13f
        0xac8bdb4 -> :sswitch_133
        0x121bbcbe -> :sswitch_127
        0x13bdcee4 -> :sswitch_11b
        0x2046b199 -> :sswitch_10f
        0x24172928 -> :sswitch_104
        0x33cf43d3 -> :sswitch_f8
        0x3c12eca9 -> :sswitch_ec
        0x40756fcb -> :sswitch_e0
        0x56e1584e -> :sswitch_d4
        0x5bc3bc90 -> :sswitch_c9
        0x789a804d -> :sswitch_be
    .end sparse-switch

    :pswitch_data_5d8
    .packed-switch 0x0
        :pswitch_33b  #00000000
        :pswitch_331  #00000001
        :pswitch_323  #00000002
        :pswitch_319  #00000003
        :pswitch_311  #00000004
        :pswitch_306  #00000005
        :pswitch_2fc  #00000006
        :pswitch_2f2  #00000007
        :pswitch_2e8  #00000008
        :pswitch_2de  #00000009
        :pswitch_2d4  #0000000a
        :pswitch_2c8  #0000000b
        :pswitch_2bd  #0000000c
        :pswitch_2b5  #0000000d
        :pswitch_2ab  #0000000e
        :pswitch_2a1  #0000000f
        :pswitch_297  #00000010
        :pswitch_28d  #00000011
        :pswitch_283  #00000012
        :pswitch_279  #00000013
        :pswitch_26f  #00000014
        :pswitch_267  #00000015
        :pswitch_25c  #00000016
        :pswitch_250  #00000017
        :pswitch_247  #00000018
        :pswitch_23d  #00000019
        :pswitch_233  #0000001a
        :pswitch_228  #0000001b
        :pswitch_21c  #0000001c
    .end packed-switch
.end method
