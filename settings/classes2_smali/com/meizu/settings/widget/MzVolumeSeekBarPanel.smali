.class public Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;
.super Landroid/widget/RelativeLayout;
.source "MzVolumeSeekBarPanel.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$Callback;,
        Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$Receiver;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$Callback;

.field private mIconHeadView:Landroid/widget/ImageView;

.field private mIconTailView:Landroid/widget/ImageView;

.field private mReceiver:Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$Receiver;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekbarRange:I

.field private mStream:I

.field private mTitlleView:Landroid/widget/TextView;

.field final mVolumeClickListener:Landroid/view/View$OnClickListener;

.field private mVolumizer:Lcom/meizu/settings/widget/MzSeekBarVolumizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    new-instance p2, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$Receiver;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$Receiver;-><init>(Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$1;)V

    iput-object p2, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mReceiver:Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$Receiver;

    .line 180
    new-instance p2, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$3;

    invoke-direct {p2, p0}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$3;-><init>(Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;)V

    iput-object p2, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mVolumeClickListener:Landroid/view/View$OnClickListener;

    const-string p2, "audio"

    .line 76
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;)V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->updateVolume()V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;)Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$Callback;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mCallback:Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$Callback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;)Landroid/widget/SeekBar;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;)I
    .registers 1

    .line 31
    iget p0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mSeekbarRange:I

    return p0
.end method

.method static synthetic access$600(Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;)Lcom/meizu/settings/widget/MzSeekBarVolumizer;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mVolumizer:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    return-object p0
.end method

.method private getMediaVolumeUri()Landroid/net/Uri;
    .registers 3

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p0, 0x7f110032

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 273
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private getSystemSoundUri()Landroid/net/Uri;
    .registers 2

    .line 279
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_sound"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 280
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 281
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 284
    :cond_1e
    sget-object p0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    return-object p0
.end method

.method private setSeekBarVolumizerNotificationOrRingFalse()V
    .registers 2

    .line 237
    iget-object p0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mVolumizer:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    .line 238
    invoke-virtual {p0, v0}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->setNotificationOrRingActived(Z)V

    :cond_8
    return-void
.end method

.method private updateIconView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 249
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void
.end method

.method private updateVolume()V
    .registers 5

    .line 198
    iget-object v0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mVolumizer:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    if-eqz v0, :cond_8d

    invoke-virtual {v0}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    if-nez v0, :cond_c

    goto/16 :goto_8d

    .line 201
    :cond_c
    iget-object v0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mStream:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 202
    iget-object v1, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mVolumizer:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    invoke-virtual {v1}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-nez v0, :cond_58

    .line 205
    iget v0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mStream:I

    if-eq v0, v3, :cond_49

    if-eq v0, v2, :cond_3a

    if-eq v0, v1, :cond_2b

    goto :goto_8d

    .line 213
    :cond_2b
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080485

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->showHeadIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8d

    .line 210
    :cond_3a
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080482

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->showHeadIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8d

    .line 207
    :cond_49
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080490

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->showHeadIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8d

    .line 219
    :cond_58
    iget v0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mStream:I

    if-eq v0, v3, :cond_7f

    if-eq v0, v2, :cond_70

    if-eq v0, v1, :cond_61

    goto :goto_8d

    .line 227
    :cond_61
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080484

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->showHeadIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8d

    .line 224
    :cond_70
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080481

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->showHeadIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8d

    .line 221
    :cond_7f
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08048f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->showHeadIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_8d
    :goto_8d
    return-void
.end method


# virtual methods
.method public init()V
    .registers 10

    .line 119
    iget-object v0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_5

    return-void

    .line 122
    :cond_5
    new-instance v6, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$1;

    invoke-direct {v6, p0}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$1;-><init>(Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;)V

    const/4 v0, 0x0

    .line 148
    iget v1, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mStream:I

    const/4 v7, 0x1

    const/4 v8, 0x3

    if-ne v1, v8, :cond_16

    .line 149
    invoke-direct {p0}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->getMediaVolumeUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1c

    :cond_16
    if-ne v1, v7, :cond_1c

    .line 151
    invoke-direct {p0}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->getSystemSoundUri()Landroid/net/Uri;

    move-result-object v0

    :cond_1c
    :goto_1c
    move-object v5, v0

    .line 154
    iget-object v0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mVolumizer:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    if-nez v0, :cond_30

    .line 155
    new-instance v0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$2;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mStream:I

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$2;-><init>(Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;Landroid/content/Context;ILandroid/net/Uri;Lcom/meizu/settings/widget/MzSeekBarVolumizer$Callback;)V

    iput-object v0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mVolumizer:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    .line 162
    :cond_30
    invoke-direct {p0}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->setSeekBarVolumizerNotificationOrRingFalse()V

    .line 163
    iget v0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mStream:I

    if-ne v0, v8, :cond_3d

    .line 164
    iget-object v0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setKeyProgressIncrement(I)V

    .line 166
    :cond_3d
    iget-object v0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mVolumizer:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    invoke-virtual {v0}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->start()V

    .line 167
    iget-object v0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mVolumizer:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    iget-object v1, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 168
    iget-object v0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mCallback:Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$Callback;

    iget v1, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mStream:I

    iget-object v2, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$Callback;->onStreamValueChanged(II)V

    .line 169
    iget v0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mStream:I

    if-ne v0, v8, :cond_5f

    .line 170
    iget-object v0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mReceiver:Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$Receiver;

    invoke-virtual {v0, v7}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$Receiver;->startListen(Z)V

    :cond_5f
    const/16 v0, 0xf

    .line 173
    iput v0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mSeekbarRange:I

    .line 174
    iget v0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mStream:I

    if-ne v0, v7, :cond_75

    .line 175
    iget-object v0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mIconHeadView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mVolumeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mIconTailView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mVolumeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_75
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 111
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a07d0

    .line 112
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mSeekBar:Landroid/widget/SeekBar;

    const v0, 0x7f0a0753

    .line 113
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mTitlleView:Landroid/widget/TextView;

    const v0, 0x7f0a07cc

    .line 114
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mIconHeadView:Landroid/widget/ImageView;

    const v0, 0x7f0a07cd

    .line 115
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mIconTailView:Landroid/widget/ImageView;

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 4

    .line 244
    iget-object p1, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mCallback:Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$Callback;

    iget p0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mStream:I

    invoke-interface {p1, p0, p2}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$Callback;->onStreamValueChanged(II)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public release()V
    .registers 3

    .line 101
    iget-object v0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mVolumizer:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    if-eqz v0, :cond_7

    .line 102
    invoke-virtual {v0}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->stop()V

    .line 104
    :cond_7
    iget v0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mStream:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    .line 105
    iget-object p0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mReceiver:Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$Receiver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$Receiver;->startListen(Z)V

    :cond_12
    return-void
.end method

.method public setCallback(Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$Callback;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mCallback:Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$Callback;

    return-void
.end method

.method public setStream(I)V
    .registers 2

    .line 93
    iput p1, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mStream:I

    return-void
.end method

.method public showHeadIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 254
    iget-object v0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mIconHeadView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->updateIconView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public showTailIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 258
    iget-object v0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mIconTailView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->updateIconView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public showTitle(Ljava/lang/String;)V
    .registers 3

    .line 262
    iget-object v0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mTitlleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1b

    .line 263
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 265
    iget-object p0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mTitlleView:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1b

    .line 267
    :cond_14
    iget-object p0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->mTitlleView:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1b
    :goto_1b
    return-void
.end method
