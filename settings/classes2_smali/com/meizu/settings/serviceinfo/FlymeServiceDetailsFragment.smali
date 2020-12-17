.class public Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "FlymeServiceDetailsFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$AsyncWorker;
    }
.end annotation


# instance fields
.field private mCStatus:I

.field private mCommitItem:Landroid/view/MenuItem;

.field private mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mDetails:Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;

.field private mFixTime:Ljava/lang/String;

.field private mFlymeEvaluationPreference:Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;

.field private mFlymeFixDetailsPreference:Lcom/meizu/settings/serviceinfo/FlymeFixDetailsPreference;

.field private mFlymeSuggestPreference:Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;

.field private mHandler:Landroid/os/Handler;

.field private mHasUncommitEvaluation:Z

.field private mId:Ljava/lang/String;

.field private mOnBackPressedListener:Lcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;

.field private mResultData:I

.field private mRetryCount:I

.field private mSN:Ljava/lang/String;

.field private mSuggest:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, -0x1

    .line 103
    iput v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mResultData:I

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mDestroyed:Z

    .line 107
    iput v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mRetryCount:I

    .line 110
    new-instance v0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$1;-><init>(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;)V

    iput-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mOnBackPressedListener:Lcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;)Z
    .registers 1

    .line 57
    iget-boolean p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mHasUncommitEvaluation:Z

    return p0
.end method

.method static synthetic access$002(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;Z)Z
    .registers 2

    .line 57
    iput-boolean p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mHasUncommitEvaluation:Z

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;)V
    .registers 1

    .line 57
    invoke-direct {p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->showCancelDialog()V

    return-void
.end method

.method static synthetic access$1002(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;I)I
    .registers 2

    .line 57
    iput p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mCStatus:I

    return p1
.end method

.method static synthetic access$1100(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;)Z
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->isDetailsAvailable(Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;II)V
    .registers 3

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->sendMessage(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;)V
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->setServiceView(Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;ZLcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;)V
    .registers 3

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->setOnBackPressedListener(ZLcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;Z)V
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->safeOnBack(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;)Lcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mOnBackPressedListener:Lcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;ZLcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;)V
    .registers 3

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->setOnBackPressedListener(ZLcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;)V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;)Ljava/lang/String;
    .registers 1

    .line 57
    invoke-direct {p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->readServiceDetails()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;)Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mDetails:Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;

    return-object p0
.end method

.method static synthetic access$502(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;)Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mDetails:Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;

    return-object p1
.end method

.method static synthetic access$600(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;Ljava/lang/String;)Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->makeServiceDetailsAndSave(Ljava/lang/String;)Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;)V
    .registers 1

    .line 57
    invoke-direct {p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->commitEvaluationAndSuggest()V

    return-void
.end method

.method static synthetic access$800(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;)Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;
    .registers 1

    .line 57
    invoke-direct {p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->getLocalServiceDetails()Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$902(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mSuggest:Ljava/lang/String;

    return-object p1
.end method

.method private bindServicesDetails()V
    .registers 2

    .line 716
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mDetails:Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;

    invoke-direct {p0, v0}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->setServiceView(Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;)V

    return-void
.end method

.method private commitEvaluationAndSuggest()V
    .registers 13

    .line 553
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mFlymeEvaluationPreference:Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;

    const-string v1, "FlymeServiceDetailsFragment"

    const/4 v2, -0x1

    if-eqz v0, :cond_3c

    .line 554
    invoke-virtual {v0}, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->getOverallEvaluation()I

    move-result v2

    .line 555
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mFlymeEvaluationPreference:Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;

    invoke-virtual {v0}, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->getServiceEvaluation()I

    move-result v0

    .line 556
    iget-object v3, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mFlymeEvaluationPreference:Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;

    invoke-virtual {v3}, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->getSpeedEvaluation()I

    move-result v3

    .line 557
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evaluation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", attitude = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", speed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    :cond_3c
    move v0, v2

    move v3, v0

    .line 562
    :goto_3e
    iget-object v4, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mFlymeSuggestPreference:Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;

    const/4 v11, 0x0

    if-eqz v4, :cond_48

    .line 563
    invoke-virtual {v4}, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->getText()Ljava/lang/String;

    move-result-object v4

    goto :goto_49

    :cond_48
    move-object v4, v11

    .line 565
    :goto_49
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/meizu/settings/serviceinfo/Util;->PHONE_COOPERATE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/meizu/settings/serviceinfo/FlymeMD5Util;->MD5Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 566
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pwdKey = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mSN:Ljava/lang/String;

    iget-object v5, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mId:Ljava/lang/String;

    const-string v6, "act=evaluation"

    invoke-static {v6, v1, v5}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->makeURLString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, -0x1

    move v6, v2

    move v7, v0

    move v8, v3

    move-object v10, v4

    .line 569
    invoke-static/range {v5 .. v10}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->makeEvaluationContent(IIIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 572
    :try_start_87
    invoke-static {v1, v5}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->httpPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8b} :catch_8c

    goto :goto_90

    :catch_8c
    move-exception v1

    .line 575
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 577
    :goto_90
    invoke-virtual {p0, v11}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->isRequestSuccess(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ad

    iget-object v1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mDetails:Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;

    if-eqz v1, :cond_ad

    const/4 v5, 0x2

    .line 578
    invoke-virtual {v1, v5}, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->setCStatus(I)V

    .line 579
    iget-object v1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mDetails:Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;

    invoke-virtual {v1, v2, v0, v3}, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->setEvaluation(III)V

    .line 580
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mDetails:Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;

    invoke-virtual {v0, v4}, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->setSuggest(Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mDetails:Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;

    invoke-direct {p0, v0}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->commitServiceDetails(Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;)Z

    :cond_ad
    const/4 v0, 0x1

    .line 583
    invoke-direct {p0, v11, v0}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->dealRequestResult(Ljava/lang/String;Z)V

    return-void
.end method

.method private commitServiceDetails(Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;)Z
    .registers 3

    .line 635
    invoke-static {}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoLocalSharepreference;->getInstance()Lcom/meizu/settings/serviceinfo/FlymeServiceInfoLocalSharepreference;

    move-result-object v0

    .line 636
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoLocalSharepreference;->commitLocalServiceDetails(Landroid/content/Context;Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;)Z

    move-result p0

    return p0
.end method

.method private commitServiceEvaluationAndSuggest()V
    .registers 4

    .line 540
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->isNetWorkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 541
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mCommitItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 542
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 544
    :cond_10
    new-instance v0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$AsyncWorker;

    iget-object v2, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$AsyncWorker;-><init>(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;Landroid/content/Context;)V

    const/4 p0, 0x1

    new-array v2, p0, [Ljava/lang/Integer;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_23
    return-void
.end method

.method private dealRequestResult(Ljava/lang/String;Z)V
    .registers 3

    .line 303
    invoke-virtual {p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->isRequestSuccess(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x2

    const/4 p2, 0x0

    .line 304
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->sendMessage(II)V

    goto :goto_10

    :cond_c
    const/4 p1, 0x3

    .line 306
    invoke-direct {p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->showResult(I)V

    :goto_10
    return-void
.end method

.method private getLocalServiceDetails()Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;
    .registers 3

    .line 640
    invoke-static {}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoLocalSharepreference;->getInstance()Lcom/meizu/settings/serviceinfo/FlymeServiceInfoLocalSharepreference;

    move-result-object v0

    .line 641
    iget-object v1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoLocalSharepreference;->getLocalServiceDetails(Landroid/content/Context;Ljava/lang/String;)Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;

    move-result-object p0

    return-object p0
.end method

.method private isDetailsAvailable(Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;)Z
    .registers 2

    if-nez p1, :cond_8

    .line 746
    invoke-virtual {p1}, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->getExpenses()Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 747
    :cond_8
    invoke-virtual {p1}, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->getRepairDateItems()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 748
    invoke-virtual {p1}, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->getRepairInfoItems()Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x1

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x0

    return p0
.end method

.method private makeServiceDetailsAndSave(Ljava/lang/String;)Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_17a

    .line 370
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_11

    goto/16 :goto_17a

    .line 378
    :cond_11
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 379
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 382
    :try_start_1b
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "returnCode"

    .line 384
    invoke-static {v5, v0}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->SafeGetJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "200"

    .line 386
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 387
    invoke-direct {v1, v2, v4}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->sendMessage(II)V

    return-object v3

    :cond_32
    const-string v0, "returnValue"

    .line 395
    invoke-static {v5, v0}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->SafeGetJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_38} :catch_170

    :try_start_38
    const-string v0, "suggest"

    .line 405
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_40} :catch_41

    goto :goto_46

    :catch_41
    move-exception v0

    .line 408
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v3

    :goto_46
    if-eqz v5, :cond_16d

    :try_start_48
    const-string v6, "cstatus"

    .line 412
    invoke-static {v5, v6}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->SafeGetJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v15

    const-string v6, "overall"

    .line 414
    invoke-static {v5, v6}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->SafeGetJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v13

    const-string v6, "service"

    .line 416
    invoke-static {v5, v6}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->SafeGetJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v14

    const-string v6, "speed"

    .line 418
    invoke-static {v5, v6}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->SafeGetJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v16

    const-string v6, "repair_info"

    .line 421
    invoke-static {v5, v6}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->SafeGetJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6
    :try_end_66
    .catch Lorg/json/JSONException; {:try_start_48 .. :try_end_66} :catch_165

    const-string v7, "data"

    const-string v8, "title"

    if-eqz v6, :cond_ab

    .line 425
    :try_start_6c
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9
    :try_end_70
    .catch Lorg/json/JSONException; {:try_start_6c .. :try_end_70} :catch_165

    if-lez v9, :cond_ab

    move v12, v4

    :goto_73
    if-ge v12, v9, :cond_ab

    .line 429
    :try_start_75
    invoke-virtual {v6, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_79
    .catch Lorg/json/JSONException; {:try_start_75 .. :try_end_79} :catch_a6

    .line 430
    :try_start_79
    invoke-static {v2, v8}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->SafeGetJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 432
    invoke-static {v2, v7}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->SafeGetJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8b

    const-string v3, "null"

    .line 434
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_98

    .line 435
    :cond_8b
    iget-object v2, v1, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120ef4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 438
    :cond_98
    new-instance v3, Lcom/meizu/settings/serviceinfo/Util$InfoItem;

    invoke-direct {v3, v4, v2}, Lcom/meizu/settings/serviceinfo/Util$InfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_73

    :catch_a6
    move-exception v0

    move v3, v4

    :goto_a8
    const/4 v2, 0x6

    goto/16 :goto_167

    :cond_ab
    const-string v2, "expenses_info"

    .line 443
    invoke-static {v5, v2}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->SafeGetJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_107

    .line 446
    invoke-static {v2, v8}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->SafeGetJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 448
    new-instance v4, Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;

    const/4 v6, 0x0

    invoke-direct {v4, v3, v6}, Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 449
    invoke-static {v2, v7}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->SafeGetJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_105

    const-string v3, "amount"

    .line 452
    invoke-static {v2, v3}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->SafeGetJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "amount_str"

    .line 454
    invoke-static {v2, v6}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->SafeGetJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 457
    invoke-virtual {v4, v3}, Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;->setAmount(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v4, v6}, Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;->setAmountStr(Ljava/lang/String;)V

    const-string v3, "info"

    .line 459
    invoke-static {v2, v3}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->SafeGetJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_105

    .line 462
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_105

    const/4 v6, 0x0

    :goto_e4
    if-ge v6, v3, :cond_105

    .line 467
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v12, "val"

    .line 468
    invoke-static {v9, v12}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->SafeGetJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 p1, v2

    const-string v2, "sign"

    .line 470
    invoke-static {v9, v2}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->SafeGetJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 472
    new-instance v9, Lcom/meizu/settings/serviceinfo/Util$InfoItem;

    invoke-direct {v9, v12, v2}, Lcom/meizu/settings/serviceinfo/Util$InfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;->addData(Lcom/meizu/settings/serviceinfo/Util$InfoItem;)V

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, p1

    goto :goto_e4

    :cond_105
    move-object v9, v4

    goto :goto_108

    :cond_107
    const/4 v9, 0x0

    :goto_108
    const-string v2, "repair_date"

    .line 479
    invoke-static {v5, v2}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->SafeGetJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_130

    .line 483
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_130

    const/4 v4, 0x0

    :goto_117
    if-ge v4, v3, :cond_130

    .line 487
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 488
    invoke-static {v5, v8}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->SafeGetJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 490
    invoke-static {v5, v7}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->SafeGetJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 492
    new-instance v12, Lcom/meizu/settings/serviceinfo/Util$InfoItem;

    invoke-direct {v12, v6, v5}, Lcom/meizu/settings/serviceinfo/Util$InfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_117

    .line 496
    :cond_130
    new-instance v2, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;

    iget-object v7, v1, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mSN:Ljava/lang/String;

    iget-object v8, v1, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mId:Ljava/lang/String;

    iget-object v3, v1, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mFixTime:Ljava/lang/String;

    move-object v6, v2

    move v12, v15

    move v4, v15

    move/from16 v15, v16

    move-object/from16 v16, v3

    invoke-direct/range {v6 .. v16}, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;Ljava/util/ArrayList;Ljava/util/ArrayList;IIIILjava/lang/String;)V

    iput-object v2, v1, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mDetails:Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;

    .line 498
    iget-object v2, v1, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mDetails:Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;

    invoke-virtual {v2, v0}, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->setSuggest(Ljava/lang/String;)V

    .line 499
    iput-object v0, v1, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mSuggest:Ljava/lang/String;

    .line 500
    iput v4, v1, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mCStatus:I

    .line 501
    iget-object v0, v1, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mDetails:Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;

    invoke-direct {v1, v0}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->commitServiceDetails(Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;)Z
    :try_end_152
    .catch Lorg/json/JSONException; {:try_start_79 .. :try_end_152} :catch_161

    const-wide/16 v2, 0x190

    .line 503
    :try_start_154
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_157} :catch_157

    :catch_157
    const/4 v0, 0x7

    const/4 v2, 0x0

    .line 507
    :try_start_159
    invoke-direct {v1, v0, v2}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->sendMessage(II)V
    :try_end_15c
    .catch Lorg/json/JSONException; {:try_start_159 .. :try_end_15c} :catch_15d

    goto :goto_16d

    :catch_15d
    move-exception v0

    move v3, v2

    goto/16 :goto_a8

    :catch_161
    move-exception v0

    const/4 v2, 0x6

    const/4 v3, 0x0

    goto :goto_167

    :catch_165
    move-exception v0

    move v3, v4

    .line 511
    :goto_167
    invoke-direct {v1, v2, v3}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->sendMessage(II)V

    .line 512
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 514
    :cond_16d
    :goto_16d
    iget-object v0, v1, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mDetails:Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;

    return-object v0

    :catch_170
    move-exception v0

    move v3, v4

    .line 398
    invoke-direct {v1, v2, v3}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->sendMessage(II)V

    .line 399
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v4, 0x0

    return-object v4

    :cond_17a
    :goto_17a
    move/from16 v17, v4

    move-object v4, v3

    move/from16 v3, v17

    .line 371
    invoke-direct {v1, v2, v3}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->sendMessage(II)V

    return-object v4
.end method

.method private readServiceDetails()Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "act=info"

    .line 613
    iget-object v1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mSN:Ljava/lang/String;

    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mId:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->makeURLString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->httpGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    .line 616
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private safeOnBack(Z)V
    .registers 5

    if-nez p1, :cond_6

    .line 793
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 796
    :cond_6
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$5;

    invoke-direct {v0, p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$5;-><init>(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private sendMessage(II)V
    .registers 5

    .line 740
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_8

    int-to-long v0, p2

    .line 741
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_8
    return-void
.end method

.method private setFixDetails()V
    .registers 2

    .line 189
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->isNetWorkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 190
    invoke-direct {p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->setServiceDetailsFromNet()V

    goto :goto_f

    .line 192
    :cond_c
    invoke-direct {p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->setServiceDetailsFromLocal()V

    :goto_f
    return-void
.end method

.method private setServiceDetailsFromLocal()V
    .registers 4

    .line 228
    new-instance v0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$AsyncWorker;

    iget-object v1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$AsyncWorker;-><init>(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;Landroid/content/Context;)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Integer;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p0, v2

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private setServiceDetailsFromLocalWithCause(I)V
    .registers 4

    .line 232
    new-instance v0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$AsyncWorker;

    iget-object v1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$AsyncWorker;-><init>(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;Landroid/content/Context;)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, p0, v1

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private setServiceDetailsFromNet()V
    .registers 4

    .line 224
    new-instance v0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$AsyncWorker;

    iget-object v1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$AsyncWorker;-><init>(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;Landroid/content/Context;)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p0, v1

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private setServiceView(Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;)V
    .registers 3

    const/4 v0, -0x1

    .line 332
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->setServiceView(Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;I)V

    return-void
.end method

.method private setServiceView(Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;I)V
    .registers 8

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setServiceView, which = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FlymeServiceDetailsFragment"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_72

    .line 338
    iget-object p2, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mFlymeEvaluationPreference:Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;

    if-eqz p2, :cond_68

    iget-object p2, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mFlymeFixDetailsPreference:Lcom/meizu/settings/serviceinfo/FlymeFixDetailsPreference;

    if-nez p2, :cond_21

    goto :goto_68

    :cond_21
    const-wide/16 v0, 0x96

    const/4 v2, 0x6

    const/4 v3, 0x1

    if-eqz p2, :cond_2f

    .line 343
    iget-boolean v4, p2, Lcom/meizu/settings/serviceinfo/FlymeFixDetailsPreference;->mCreated:Z

    if-eqz v4, :cond_2f

    .line 344
    invoke-virtual {p2, p1}, Lcom/meizu/settings/serviceinfo/FlymeFixDetailsPreference;->setDetailsInfo(Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;)V

    goto :goto_40

    .line 346
    :cond_2f
    iget p2, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mRetryCount:I

    if-ge p2, v2, :cond_40

    iget-object p2, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_40

    const/4 v4, 0x0

    .line 347
    invoke-virtual {p2, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 349
    iget p2, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mRetryCount:I

    add-int/2addr p2, v3

    iput p2, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mRetryCount:I

    .line 353
    :cond_40
    :goto_40
    iget-object p2, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mFlymeEvaluationPreference:Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;

    if-eqz p2, :cond_4c

    iget-boolean v4, p2, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mCreated:Z

    if-eqz v4, :cond_4c

    .line 354
    invoke-virtual {p2, p1}, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->setDetailsInfo(Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;)V

    goto :goto_5c

    .line 356
    :cond_4c
    iget p2, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mRetryCount:I

    if-ge p2, v2, :cond_5c

    iget-object p2, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_5c

    .line 357
    invoke-virtual {p2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 359
    iget p2, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mRetryCount:I

    add-int/2addr p2, v3

    iput p2, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mRetryCount:I

    .line 363
    :cond_5c
    :goto_5c
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mFlymeSuggestPreference:Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;

    if-eqz p0, :cond_72

    .line 364
    invoke-virtual {p1}, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->getSuggest()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->setText(Ljava/lang/String;)V

    goto :goto_72

    .line 339
    :cond_68
    :goto_68
    invoke-direct {p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->updatePreference()V

    const/16 p1, 0x8

    const/16 p2, 0x64

    .line 340
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->sendMessage(II)V

    :cond_72
    :goto_72
    return-void
.end method

.method private showCancelDialog()V
    .registers 4

    .line 123
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120036

    .line 124
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$3;

    invoke-direct {v1, p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$3;-><init>(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;)V

    const v2, 0x7f120035

    .line 125
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$2;

    invoke-direct {v1, p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$2;-><init>(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;)V

    const p0, 0x7f120442

    .line 136
    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 144
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 145
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showResult(I)V
    .registers 3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_7

    goto :goto_12

    .line 627
    :cond_7
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_12

    .line 624
    :cond_d
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_12
    return-void
.end method

.method private updatePreference()V
    .registers 5

    .line 171
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 172
    new-instance v0, Lcom/meizu/settings/serviceinfo/FlymeFixDetailsPreference;

    iget-object v1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mDetails:Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;

    invoke-direct {v0, v1, v2}, Lcom/meizu/settings/serviceinfo/FlymeFixDetailsPreference;-><init>(Landroid/content/Context;Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;)V

    iput-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mFlymeFixDetailsPreference:Lcom/meizu/settings/serviceinfo/FlymeFixDetailsPreference;

    .line 173
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mFlymeFixDetailsPreference:Lcom/meizu/settings/serviceinfo/FlymeFixDetailsPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 174
    new-instance v0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;

    iget-object v1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mCStatus:I

    iget-object v3, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mDetails:Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;

    invoke-direct {v0, v1, v2, v3}, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;-><init>(Landroid/content/Context;ILcom/meizu/settings/serviceinfo/Util$ServiceDetails;)V

    iput-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mFlymeEvaluationPreference:Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;

    .line 176
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mFlymeEvaluationPreference:Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 177
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mFlymeEvaluationPreference:Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;

    invoke-virtual {v0, p0}, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->setFragment(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;)V

    .line 178
    new-instance v0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;

    iget-object v1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mSuggest:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mFlymeSuggestPreference:Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;

    .line 179
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mFlymeSuggestPreference:Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 180
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mFlymeSuggestPreference:Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;

    invoke-virtual {v0, p0}, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->setFragment(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;)V

    .line 182
    iget v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mCStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5a

    .line 183
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mFlymeSuggestPreference:Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_5a
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 6

    .line 646
    iget p1, p1, Landroid/os/Message;->what:I

    const v0, 0x7f120ade

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_94

    goto/16 :goto_93

    .line 693
    :pswitch_e  #0xa
    invoke-direct {p0, v1, v3}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->sendMessage(II)V

    .line 694
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/meizu/settings/utils/MzUtils;->showSlideNotice(Landroid/content/Context;I)V

    goto/16 :goto_93

    .line 686
    :pswitch_1a  #0x9
    invoke-direct {p0, v2}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->safeOnBack(Z)V

    .line 687
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/meizu/settings/utils/MzUtils;->showSlideNotice(Landroid/content/Context;I)V

    goto/16 :goto_93

    .line 701
    :pswitch_26  #0x8
    invoke-direct {p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->bindServicesDetails()V

    goto :goto_93

    :pswitch_2a  #0x6
    const/4 p1, 0x3

    .line 690
    invoke-direct {p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->setServiceDetailsFromLocalWithCause(I)V

    goto :goto_93

    .line 698
    :pswitch_2f  #0x5, 0x7
    invoke-direct {p0, v1, v3}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->sendMessage(II)V

    goto :goto_93

    .line 682
    :pswitch_33  #0x4
    invoke-direct {p0, v2}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->safeOnBack(Z)V

    .line 683
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const p1, 0x7f120efe

    invoke-static {p0, p1}, Lcom/meizu/settings/utils/MzUtils;->showSlideNotice(Landroid/content/Context;I)V

    goto :goto_93

    .line 676
    :pswitch_41  #0x3
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mCommitItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_48

    .line 677
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 679
    :cond_48
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const p1, 0x7f120517

    invoke-static {p0, p1}, Lcom/meizu/settings/utils/MzUtils;->showSlideNotice(Landroid/content/Context;I)V

    goto :goto_93

    .line 655
    :pswitch_53  #0x2
    :try_start_53
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "input_method"

    .line 656
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 657
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 658
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mFlymeSuggestPreference:Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;

    invoke-virtual {v0}, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 659
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mFlymeSuggestPreference:Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;

    .line 660
    invoke-virtual {v0}, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 659
    invoke-virtual {p1, v0, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_7b} :catch_7b

    .line 664
    :catch_7b
    :cond_7b
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$4;

    invoke-direct {v0, p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$4;-><init>(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_93

    .line 651
    :pswitch_88  #0x1
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mDetails:Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;

    invoke-direct {p0, p1, v2}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->setServiceView(Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;I)V

    goto :goto_93

    .line 648
    :pswitch_8e  #0x0
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mDetails:Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;

    invoke-direct {p0, p1, v3}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->setServiceView(Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;I)V

    :goto_93
    return v3

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_8e  #00000000
        :pswitch_88  #00000001
        :pswitch_53  #00000002
        :pswitch_41  #00000003
        :pswitch_33  #00000004
        :pswitch_2f  #00000005
        :pswitch_2a  #00000006
        :pswitch_2f  #00000007
        :pswitch_26  #00000008
        :pswitch_1a  #00000009
        :pswitch_e  #0000000a
    .end packed-switch
.end method

.method public isRequestSuccess(Ljava/lang/String;)Z
    .registers 2

    if-eqz p1, :cond_25

    .line 313
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_25

    .line 315
    :try_start_8
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_13

    :catch_e
    move-exception p0

    .line 317
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_13
    if-eqz p0, :cond_25

    const-string p1, "returnCode"

    .line 321
    invoke-static {p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->SafeGetJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "200"

    .line 323
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_25

    const/4 p0, 0x1

    goto :goto_26

    :cond_25
    const/4 p0, 0x0

    :goto_26
    return p0
.end method

.method public notifyPreferenceChanged()V
    .registers 5

    .line 763
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mFlymeEvaluationPreference:Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    .line 764
    invoke-virtual {v0}, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->isReadyToCommit()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 765
    invoke-virtual {p0, v2}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->setCommitMenuEnabled(Z)V

    goto :goto_3e

    .line 766
    :cond_10
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mFlymeEvaluationPreference:Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;

    if-eqz v0, :cond_1d

    .line 767
    invoke-virtual {v0}, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->haveEvaluation()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 768
    iput-boolean v2, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mHasUncommitEvaluation:Z

    goto :goto_3e

    .line 770
    :cond_1d
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mFlymeSuggestPreference:Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;

    if-eqz v0, :cond_3c

    .line 771
    invoke-virtual {v0}, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->isReadyToCommit()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 772
    iput-boolean v2, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mHasUncommitEvaluation:Z

    .line 773
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mFlymeEvaluationPreference:Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;

    if-eqz v0, :cond_38

    .line 774
    invoke-virtual {v0}, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->getCStatus()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_38

    .line 775
    invoke-virtual {p0, v2}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->setCommitMenuEnabled(Z)V

    goto :goto_3e

    .line 777
    :cond_38
    invoke-virtual {p0, v1}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->setCommitMenuEnabled(Z)V

    goto :goto_3e

    .line 780
    :cond_3c
    iput-boolean v1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mHasUncommitEvaluation:Z

    .line 784
    :goto_3e
    iget-boolean v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mHasUncommitEvaluation:Z

    if-eqz v0, :cond_48

    .line 785
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mOnBackPressedListener:Lcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;

    invoke-virtual {p0, v2, v0}, Lcom/meizu/settings/SettingsPreferenceFragment;->setOnBackPressedListener(ZLcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;)V

    goto :goto_4d

    .line 787
    :cond_48
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mOnBackPressedListener:Lcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;

    invoke-virtual {p0, v1, v0}, Lcom/meizu/settings/SettingsPreferenceFragment;->setOnBackPressedListener(ZLcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;)V

    :goto_4d
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 150
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 151
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mContext:Landroid/content/Context;

    .line 152
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 153
    iput-boolean p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mDestroyed:Z

    const v0, 0x7f16006b

    .line 154
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 155
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3f

    const-string v1, "fsn"

    .line 157
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mSN:Ljava/lang/String;

    const-string v1, "fnumber"

    .line 158
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mId:Ljava/lang/String;

    const-string v1, "foptime"

    .line 159
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mFixTime:Ljava/lang/String;

    const-string v1, "cstatus"

    .line 160
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mCStatus:I

    .line 163
    :cond_3f
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mSN:Ljava/lang/String;

    if-eqz v0, :cond_55

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mId:Ljava/lang/String;

    if-eqz v0, :cond_55

    .line 164
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_54

    goto :goto_55

    :cond_54
    return-void

    .line 165
    :cond_55
    :goto_55
    invoke-direct {p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->safeOnBack(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4

    const v0, 0x7f0e0011

    .line 519
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a042e

    .line 520
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mCommitItem:Landroid/view/MenuItem;

    const/4 v0, 0x0

    .line 521
    invoke-virtual {p0, v0}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->setCommitMenuEnabled(Z)V

    .line 522
    invoke-virtual {p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->notifyPreferenceChanged()V

    .line 523
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 711
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onDestroy()V

    const/4 v0, 0x1

    .line 712
    iput-boolean v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mDestroyed:Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    .line 528
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f0a042e

    if-ne v2, v0, :cond_16

    .line 529
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/meizu/settings/utils/FlymeNetworkUtils;->isNetWorkAvailable(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 530
    invoke-direct {p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->commitServiceEvaluationAndSuggest()V

    goto :goto_24

    :cond_16
    const v0, 0x102002c

    .line 532
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne v0, v2, :cond_24

    iget-boolean v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mHasUncommitEvaluation:Z

    if-eqz v0, :cond_24

    return v1

    .line 536
    :cond_24
    :goto_24
    invoke-super {p0, p1}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 3

    .line 220
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onStop()V
    .registers 3

    .line 210
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onStop()V

    .line 211
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 212
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 213
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 198
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p2, 0x1

    .line 199
    invoke-virtual {p0, p2}, Landroid/preference/PreferenceFragment;->setHasOptionsMenu(Z)V

    .line 200
    invoke-direct {p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->setFixDetails()V

    const/4 p2, 0x0

    .line 201
    iput p2, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mRetryCount:I

    const p0, 0x102000a

    .line 202
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ListView;

    if-eqz p0, :cond_1d

    const/high16 p1, 0x40000

    .line 204
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    :cond_1d
    return-void
.end method

.method public setCommitMenuEnabled(Z)V
    .registers 3

    .line 756
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mCommitItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_c

    .line 757
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 758
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->mCommitItem:Landroid/view/MenuItem;

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_c
    return-void
.end method
