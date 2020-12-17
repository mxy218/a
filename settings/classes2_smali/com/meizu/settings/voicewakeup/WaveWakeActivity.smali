.class public Lcom/meizu/settings/voicewakeup/WaveWakeActivity;
.super Landroid/app/Activity;
.source "WaveWakeActivity.java"

# interfaces
.implements Lcom/meizu/settings/voicewakeup/WaveSetEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/voicewakeup/WaveWakeActivity$WaveTextWatcher;,
        Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;,
        Lcom/meizu/settings/voicewakeup/WaveWakeActivity$DownloadVSFirmware;
    }
.end annotation


# static fields
.field private static mLastExitTime:J


# instance fields
.field CVQConfig:Ljava/lang/String;

.field DTAG:Ljava/lang/String;

.field private final PART_SIZE:I

.field private alertDialog:Landroid/app/AlertDialog;

.field private backDialog:Landroid/app/AlertDialog;

.field dvfs:Lcom/meizu/settings/voicewakeup/WaveWakeActivity$DownloadVSFirmware;

.field exitcalled:Ljava/lang/Boolean;

.field fail:Ljava/lang/Boolean;

.field iVSService:Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;

.field private input:Landroid/widget/EditText;

.field private mAnimateHandler:Landroid/os/Handler;

.field mContext:Landroid/content/Context;

.field private mLineColor:I

.field private mLoadingView:Lcom/meizu/settings/voicewakeup/LoadingView;

.field private mMainView:Landroid/view/View;

.field private mModifyIndex:I

.field private mRecordButton:Landroid/widget/ImageView;

.field private mRecordView:Lcom/meizu/settings/voicewakeup/RecordSpectrumView;

.field private mTipContainer:Landroid/view/View;

.field private mTipFigureContainer:Landroid/view/View;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWaveConfirm:Landroid/view/View;

.field private mWaveFirst:Landroid/view/View;

.field private mWaveFirstAni:Landroid/view/View;

.field private mWaveFirstInit:Landroid/view/View;

.field private mWaveSecond:Landroid/view/View;

.field private mWaveSecondAni:Landroid/view/View;

.field private mWaveSecondInit:Landroid/view/View;

.field private mWaveThirdAni:Landroid/view/View;

.field private mWaveThirdInit:Landroid/view/View;

.field private mWaveThree:Landroid/view/View;

.field private mWaveTipView:Landroid/widget/TextView;

.field mode:Ljava/lang/String;

.field phonic_length:Ljava/lang/String;

.field selectedkeyword:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field status:Ljava/lang/String;

.field training_sequence_no:I

.field trainingmode:Ljava/lang/String;

.field ts:Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x4

    .line 57
    iput v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->PART_SIZE:I

    const/4 v0, 0x1

    .line 59
    iput v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->training_sequence_no:I

    const-string v0, "WaveWakeHelper"

    .line 60
    iput-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->DTAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 61
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->fail:Ljava/lang/Boolean;

    const-string v1, "training"

    .line 62
    iput-object v1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->trainingmode:Ljava/lang/String;

    const-string v1, ""

    .line 63
    iput-object v1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mode:Ljava/lang/String;

    const/4 v2, 0x0

    .line 65
    iput-object v2, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->iVSService:Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;

    .line 66
    iput-object v2, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mContext:Landroid/content/Context;

    .line 68
    iput-object v2, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->ts:Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;

    .line 69
    iput-object v2, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->dvfs:Lcom/meizu/settings/voicewakeup/WaveWakeActivity$DownloadVSFirmware;

    .line 70
    iput-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->exitcalled:Ljava/lang/Boolean;

    .line 71
    iput-object v2, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->status:Ljava/lang/String;

    .line 72
    iput-object v2, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->phonic_length:Ljava/lang/String;

    .line 73
    iput-object v1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->CVQConfig:Ljava/lang/String;

    .line 95
    iput-object v2, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 96
    iput-object v2, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->backDialog:Landroid/app/AlertDialog;

    const/4 v0, -0x1

    .line 97
    iput v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mModifyIndex:I

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->selectedkeyword:Ljava/util/ArrayList;

    .line 854
    new-instance v0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$5;

    invoke-direct {v0, p0}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$5;-><init>(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)V

    iput-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mAnimateHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/widget/ImageView;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mRecordButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)I
    .registers 1

    .line 50
    iget p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mLineColor:I

    return p0
.end method

.method static synthetic access$1000(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/widget/TextView;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mWaveTipView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/view/View;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mTipFigureContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/view/View;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mTipContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;Landroid/view/View;Landroid/widget/TextView;I)V
    .registers 4

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->loadNewTip(Landroid/view/View;Landroid/widget/TextView;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/view/View;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mWaveConfirm:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/view/View;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mWaveFirstInit:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/view/View;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mWaveSecondInit:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/view/View;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mWaveThirdInit:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;Landroid/view/View;Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 4

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->loadNewTip(Landroid/view/View;Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/view/View;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mWaveFirstAni:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Lcom/meizu/settings/voicewakeup/RecordSpectrumView;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mRecordView:Lcom/meizu/settings/voicewakeup/RecordSpectrumView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/view/View;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mWaveSecondAni:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/view/View;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mWaveThirdAni:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/widget/EditText;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->input:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;Landroid/widget/EditText;)Landroid/widget/EditText;
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->input:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/os/Vibrator;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mVibrator:Landroid/os/Vibrator;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/app/AlertDialog;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->alertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->alertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;Landroid/widget/EditText;)V
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->showKeyBoardDelayed(Landroid/widget/EditText;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;Landroid/view/View;Landroid/widget/TextView;I)V
    .registers 4

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->loadFailTip(Landroid/view/View;Landroid/widget/TextView;I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;Landroid/widget/EditText;)V
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->showKeyBoard(Landroid/widget/EditText;)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/os/Handler;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mAnimateHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600()J
    .registers 2

    .line 50
    sget-wide v0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mLastExitTime:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)V
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->preparUI()V

    return-void
.end method

.method static synthetic access$800(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)V
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->resetState()V

    return-void
.end method

.method static synthetic access$900(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)V
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->postUI()V

    return-void
.end method

.method private loadFailTip(Landroid/view/View;Landroid/widget/TextView;I)V
    .registers 7

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 894
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 895
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 896
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f010066

    new-instance v2, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$6;

    invoke-direct {v2, p0, p2, p3}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$6;-><init>(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;Landroid/widget/TextView;I)V

    invoke-static {v0, p1, v1, v2}, Lcom/meizu/settings/voicewakeup/AnimationUtil;->loadAnimationAndListener(Landroid/content/Context;Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private loadNewTip(Landroid/view/View;Landroid/widget/TextView;I)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 p0, 0x0

    .line 876
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 877
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private loadNewTip(Landroid/view/View;Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 4

    if-eqz p2, :cond_10

    .line 882
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_10

    :cond_9
    const/4 p0, 0x0

    .line 885
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 886
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_10
    :goto_10
    return-void
.end method

.method private postUI()V
    .registers 4

    .line 311
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mRecordButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mLoadingView:Lcom/meizu/settings/voicewakeup/LoadingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mLoadingView:Lcom/meizu/settings/voicewakeup/LoadingView;

    invoke-virtual {v0}, Lcom/meizu/settings/voicewakeup/LoadingView;->destroy()V

    .line 315
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mTipContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mWaveTipView:Landroid/widget/TextView;

    const v2, 0x7f12181f

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->loadNewTip(Landroid/view/View;Landroid/widget/TextView;I)V

    return-void
.end method

.method private preparUI()V
    .registers 2

    .line 307
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mRecordButton:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private resetState()V
    .registers 3

    .line 320
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mRecordView:Lcom/meizu/settings/voicewakeup/RecordSpectrumView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->setState(I)V

    .line 321
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mRecordView:Lcom/meizu/settings/voicewakeup/RecordSpectrumView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 322
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mAnimateHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private showBackDialog()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 155
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x7f130335

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f121807

    .line 158
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 160
    new-instance v1, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$2;

    invoke-direct {v1, p0}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$2;-><init>(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 168
    new-instance v1, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$3;

    invoke-direct {v1, p0}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$3;-><init>(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 174
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->backDialog:Landroid/app/AlertDialog;

    .line 175
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->backDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 177
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->backDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 179
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->backDialog:Landroid/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    if-eqz p0, :cond_43

    const v0, -0x22b1b5

    .line 181
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTextColor(I)V

    :cond_43
    return-void
.end method

.method private showKeyBoard(Landroid/widget/EditText;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 732
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const-string v0, "input_method"

    .line 734
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    .line 735
    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method private showKeyBoardDelayed(Landroid/widget/EditText;)V
    .registers 4

    .line 720
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 721
    new-instance v1, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$4;-><init>(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;Landroid/widget/EditText;)V

    const-wide/16 p0, 0xc8

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public enterVSTrainingMode()I
    .registers 4

    .line 803
    :try_start_0
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->iVSService:Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;

    const-string v1, "Voice Sense Training Mode"

    const-string v2, "Train User-defined Keyword"

    invoke-virtual {v0, v1, v2}, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->SetValue(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_15

    :catch_a
    move-exception v0

    .line 806
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->DTAG:Ljava/lang/String;

    const-string v1, "Fail to enter Training Mode..."

    invoke-static {p0, v1}, Lcom/meizu/settings/voicewakeup/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_15
    const/4 p0, 0x0

    return p0
.end method

.method public exitVSTrainingMode()I
    .registers 4

    .line 816
    :try_start_0
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->iVSService:Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;

    const-string v1, "Voice Sense Training Mode"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->SetValue(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_15

    :catch_a
    move-exception v0

    .line 818
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->DTAG:Ljava/lang/String;

    const-string v1, "Fail to exit Training Mode..."

    invoke-static {p0, v1}, Lcom/meizu/settings/voicewakeup/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_15
    const/4 p0, 0x0

    return p0
.end method

.method public onBackPressed()V
    .registers 1

    .line 220
    invoke-direct {p0}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->showBackDialog()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-static {p0}, Lcom/meizu/settings/voicewakeup/DisplayUtil;->initDisplayDm(Landroid/app/Activity;)V

    const p1, 0x7f0d03a1

    .line 112
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 113
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mContext:Landroid/content/Context;

    const p1, 0x7f0a07eb

    .line 114
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mMainView:Landroid/view/View;

    const p1, 0x7f0a07e6

    .line 115
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mRecordButton:Landroid/widget/ImageView;

    const p1, 0x7f0a07f2

    .line 116
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mWaveTipView:Landroid/widget/TextView;

    const p1, 0x7f0a07e8

    .line 117
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mWaveFirst:Landroid/view/View;

    const p1, 0x7f0a07ec

    .line 118
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mWaveSecond:Landroid/view/View;

    const p1, 0x7f0a07f0

    .line 119
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mWaveThree:Landroid/view/View;

    const p1, 0x7f0a03c7

    .line 120
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/voicewakeup/LoadingView;

    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mLoadingView:Lcom/meizu/settings/voicewakeup/LoadingView;

    const p1, 0x7f0a07e9

    .line 122
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mWaveFirstAni:Landroid/view/View;

    const p1, 0x7f0a07ed

    .line 123
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mWaveSecondAni:Landroid/view/View;

    const p1, 0x7f0a07ef

    .line 124
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mWaveThirdAni:Landroid/view/View;

    const p1, 0x7f0a07ea

    .line 125
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mWaveFirstInit:Landroid/view/View;

    const p1, 0x7f0a07ee

    .line 126
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mWaveSecondInit:Landroid/view/View;

    const p1, 0x7f0a07f1

    .line 127
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mWaveThirdInit:Landroid/view/View;

    const p1, 0x7f0a07e7

    .line 128
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mWaveConfirm:Landroid/view/View;

    const p1, 0x7f0a05c5

    .line 129
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;

    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mRecordView:Lcom/meizu/settings/voicewakeup/RecordSpectrumView;

    const p1, 0x7f0a07f4

    .line 130
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mTipContainer:Landroid/view/View;

    const p1, 0x7f0a07f5

    .line 131
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mTipFigureContainer:Landroid/view/View;

    .line 132
    invoke-static {}, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->getInstance()Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->iVSService:Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;

    .line 133
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0602d0

    .line 134
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mLineColor:I

    .line 135
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mRecordButton:Landroid/widget/ImageView;

    new-instance v0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$1;-><init>(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "vibrator"

    .line 150
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 243
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->DTAG:Ljava/lang/String;

    const-string v1, "#### onDestroy ####"

    invoke-static {v0, v1}, Lcom/meizu/settings/voicewakeup/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mRecordView:Lcom/meizu/settings/voicewakeup/RecordSpectrumView;

    invoke-virtual {v0}, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->destory()V

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mLastExitTime:J

    .line 246
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onError(I)V
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    .line 828
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mContext:Landroid/content/Context;

    const v0, 0x7f121819

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_30

    :cond_d
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1a

    .line 830
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mContext:Landroid/content/Context;

    const v0, 0x7f121815

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_30

    :cond_1a
    const/4 v0, 0x3

    if-ne p1, v0, :cond_27

    .line 832
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mContext:Landroid/content/Context;

    const v0, 0x7f121818

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_30

    .line 834
    :cond_27
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mContext:Landroid/content/Context;

    const v0, 0x7f12181b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 836
    :goto_30
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mTipContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mWaveTipView:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1, p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->loadNewTip(Landroid/view/View;Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public onPartSuccess(I)V
    .registers 2

    return-void
.end method

.method protected onPause()V
    .registers 4

    .line 225
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->DTAG:Ljava/lang/String;

    const-string v1, "#### onPause ####"

    invoke-static {v0, v1}, Lcom/meizu/settings/voicewakeup/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :try_start_7
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->iVSService:Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;

    sget-object v1, Lcom/meizu/settings/voicewakeup/Constants;->VS_POWER_STATE:Ljava/lang/String;

    const-string v2, "Normal"

    invoke-virtual {v0, v1, v2}, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->SetValue(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_11

    goto :goto_1c

    :catch_11
    move-exception v0

    .line 231
    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->DTAG:Ljava/lang/String;

    const-string v2, "Failed to change the power state"

    invoke-static {v1, v2}, Lcom/meizu/settings/voicewakeup/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 235
    :goto_1c
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 237
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 238
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 4

    .line 206
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 208
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "chip_pref"

    const-string v2, "eS705:1Mic-ASRA"

    .line 209
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->CVQConfig:Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->DTAG:Ljava/lang/String;

    const-string v1, "OnResume called"

    invoke-static {v0, v1}, Lcom/meizu/settings/voicewakeup/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->CVQConfig:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/settings/voicewakeup/Constants;->setconfig(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->CVQConfig:Ljava/lang/String;

    const-string v1, "persist.sys.audience.chip"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mTipContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mWaveTipView:Landroid/widget/TextView;

    const v2, 0x7f12181f

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->loadNewTip(Landroid/view/View;Landroid/widget/TextView;I)V

    return-void
.end method

.method protected onStart()V
    .registers 4

    .line 186
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x0

    .line 187
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->exitcalled:Ljava/lang/Boolean;

    .line 188
    new-instance v1, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$DownloadVSFirmware;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$DownloadVSFirmware;-><init>(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;Lcom/meizu/settings/voicewakeup/WaveWakeActivity$1;)V

    iput-object v1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->dvfs:Lcom/meizu/settings/voicewakeup/WaveWakeActivity$DownloadVSFirmware;

    .line 189
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->dvfs:Lcom/meizu/settings/voicewakeup/WaveWakeActivity$DownloadVSFirmware;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onStop()V
    .registers 3

    .line 194
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x1

    .line 195
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->exitcalled:Ljava/lang/Boolean;

    .line 196
    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->ts:Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;

    if-eqz v1, :cond_11

    .line 197
    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 199
    :cond_11
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->dvfs:Lcom/meizu/settings/voicewakeup/WaveWakeActivity$DownloadVSFirmware;

    if-eqz p0, :cond_18

    .line 200
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_18
    return-void
.end method

.method public resetVoiceSenseTXRoute()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public resetVoiceSenseTrainingRoutes()I
    .registers 1

    .line 749
    invoke-virtual {p0}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->resetVoiceSenseTXRoute()I

    move-result p0

    return p0
.end method

.method public setInternalRoute()I
    .registers 4

    .line 761
    :try_start_0
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->iVSService:Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;

    sget-object v1, Lcom/meizu/settings/voicewakeup/Constants;->INTERNAL_ROUTE:Ljava/lang/String;

    sget-object v2, Lcom/meizu/settings/voicewakeup/Constants;->INTERNAL_ROUTE_MIC:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->SetValue(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_15

    :catch_a
    move-exception v0

    .line 765
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->DTAG:Ljava/lang/String;

    const-string v1, "Failed to apply VoiceSense demo route"

    invoke-static {p0, v1}, Lcom/meizu/settings/voicewakeup/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_15
    const/4 p0, 0x0

    return p0
.end method

.method public setVoiceSenseTXRoute()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public setVoiceSenseTrainingRoutes()I
    .registers 2

    .line 742
    invoke-virtual {p0}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->setInternalRoute()I

    move-result v0

    .line 743
    invoke-virtual {p0}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->setVoiceSenseTXRoute()I

    return v0
.end method
