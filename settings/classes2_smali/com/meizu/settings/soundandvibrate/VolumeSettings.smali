.class public Lcom/meizu/settings/soundandvibrate/VolumeSettings;
.super Lcom/meizu/settings/widget/RestrictedPreference;
.source "VolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/soundandvibrate/VolumeSettings$H;,
        Lcom/meizu/settings/soundandvibrate/VolumeSettings$VolumePanelCallback;
    }
.end annotation


# instance fields
.field private final STREAM_MUSIC_TYPE:I

.field private final STREAM_NOTIFICATION_TYPE:I

.field private final STREAM_RING_TYPE:I

.field private final STREAM_SYSTEM_TYPE:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/meizu/settings/soundandvibrate/VolumeSettings$H;

.field private mHasGetMusicAudioFocus:Z

.field private mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mStreamType:I

.field private mStreamTypeHeadIconImage:Landroid/graphics/drawable/Drawable;

.field private mStreamTypeTailIconImage:Landroid/graphics/drawable/Drawable;

.field private mStreamTypeTitle:Ljava/lang/String;

.field private final mVolumeCallback:Lcom/meizu/settings/soundandvibrate/VolumeSettings$VolumePanelCallback;

.field private mVolumeKeyListener:Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;

.field private final mVolumePanelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/widget/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Lcom/meizu/settings/soundandvibrate/VolumeSettings$VolumePanelCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/soundandvibrate/VolumeSettings$VolumePanelCallback;-><init>(Lcom/meizu/settings/soundandvibrate/VolumeSettings;Lcom/meizu/settings/soundandvibrate/VolumeSettings$1;)V

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mVolumeCallback:Lcom/meizu/settings/soundandvibrate/VolumeSettings$VolumePanelCallback;

    .line 37
    new-instance v0, Lcom/meizu/settings/soundandvibrate/VolumeSettings$H;

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/soundandvibrate/VolumeSettings$H;-><init>(Lcom/meizu/settings/soundandvibrate/VolumeSettings;Lcom/meizu/settings/soundandvibrate/VolumeSettings$1;)V

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mHandler:Lcom/meizu/settings/soundandvibrate/VolumeSettings$H;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mVolumePanelList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 41
    iput v0, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->STREAM_RING_TYPE:I

    const/4 v2, 0x2

    .line 42
    iput v2, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->STREAM_MUSIC_TYPE:I

    const/4 v3, 0x4

    .line 43
    iput v3, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->STREAM_NOTIFICATION_TYPE:I

    const/16 v3, 0x8

    .line 44
    iput v3, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->STREAM_SYSTEM_TYPE:I

    .line 45
    iput-object v1, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mStreamTypeTitle:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mStreamTypeHeadIconImage:Landroid/graphics/drawable/Drawable;

    .line 47
    iput-object v1, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mStreamTypeTailIconImage:Landroid/graphics/drawable/Drawable;

    .line 51
    new-instance v1, Lcom/meizu/settings/soundandvibrate/VolumeSettings$1;

    invoke-direct {v1, p0}, Lcom/meizu/settings/soundandvibrate/VolumeSettings$1;-><init>(Lcom/meizu/settings/soundandvibrate/VolumeSettings;)V

    iput-object v1, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mVolumeKeyListener:Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;

    const/4 v1, 0x0

    .line 72
    iput-boolean v1, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mHasGetMusicAudioFocus:Z

    .line 74
    new-instance v3, Lcom/meizu/settings/soundandvibrate/VolumeSettings$2;

    invoke-direct {v3, p0}, Lcom/meizu/settings/soundandvibrate/VolumeSettings$2;-><init>(Lcom/meizu/settings/soundandvibrate/VolumeSettings;)V

    iput-object v3, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 138
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mContext:Landroid/content/Context;

    .line 139
    iget-object v3, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 140
    sget-object v3, Lcom/android/settings/R$styleable;->VolumeSettings:[I

    invoke-virtual {p1, p2, v3, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 142
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mStreamType:I

    const/4 p2, 0x3

    .line 143
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mStreamTypeTitle:Ljava/lang/String;

    .line 144
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mStreamTypeHeadIconImage:Landroid/graphics/drawable/Drawable;

    .line 145
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mStreamTypeTailIconImage:Landroid/graphics/drawable/Drawable;

    .line 146
    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setSelectable(Z)V

    return-void
.end method

.method private abandonAudioFocus()V
    .registers 3

    .line 182
    iget-boolean v0, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mHasGetMusicAudioFocus:Z

    if-eqz v0, :cond_13

    .line 183
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    iput-boolean v1, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mHasGetMusicAudioFocus:Z

    :cond_13
    return-void
.end method

.method static synthetic access$200(Lcom/meizu/settings/soundandvibrate/VolumeSettings;)Lcom/meizu/settings/soundandvibrate/VolumeSettings$H;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mHandler:Lcom/meizu/settings/soundandvibrate/VolumeSettings$H;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/soundandvibrate/VolumeSettings;)V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->requestAudioFocus()V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/settings/soundandvibrate/VolumeSettings;)Z
    .registers 1

    .line 33
    iget-boolean p0, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mHasGetMusicAudioFocus:Z

    return p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/soundandvibrate/VolumeSettings;)V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->abandonAudioFocus()V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/settings/soundandvibrate/VolumeSettings;)Lcom/meizu/settings/soundandvibrate/VolumeSettings$VolumePanelCallback;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mVolumeCallback:Lcom/meizu/settings/soundandvibrate/VolumeSettings$VolumePanelCallback;

    return-object p0
.end method

.method private createVolumeSeekBarPanel(Landroid/view/View;IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;
    .registers 7

    .line 106
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;

    .line 107
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mVolumeCallback:Lcom/meizu/settings/soundandvibrate/VolumeSettings$VolumePanelCallback;

    invoke-virtual {p1, p0}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->setCallback(Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$Callback;)V

    .line 108
    invoke-virtual {p1, p3}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->setStream(I)V

    .line 109
    invoke-virtual {p1, p4}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->showHeadIcon(Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-virtual {p1, p5}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->showTailIcon(Landroid/graphics/drawable/Drawable;)V

    .line 111
    invoke-virtual {p1, p6}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->showTitle(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->init()V

    return-object p1
.end method

.method private requestAudioFocus()V
    .registers 5

    .line 174
    iget-boolean v0, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mHasGetMusicAudioFocus:Z

    if-nez v0, :cond_15

    .line 175
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    iput-boolean v1, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mHasGetMusicAudioFocus:Z

    :cond_15
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .registers 2

    .line 151
    invoke-super {p0, p1}, Lcom/meizu/settings/widget/RestrictedPreference;->onBindView(Landroid/view/View;)V

    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    .line 119
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 120
    iget v0, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mStreamType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    const v0, 0x7f0d022f

    goto :goto_12

    :cond_f
    const v0, 0x7f0d022e

    :goto_12
    const/4 v1, 0x0

    .line 119
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 122
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mVolumePanelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;

    .line 123
    invoke-virtual {v1}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->release()V

    goto :goto_1d

    .line 125
    :cond_2d
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mVolumePanelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 127
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mVolumePanelList:Ljava/util/ArrayList;

    const v4, 0x7f0a07cf

    iget v5, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mStreamType:I

    iget-object v6, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mStreamTypeHeadIconImage:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mStreamTypeTailIconImage:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mStreamTypeTitle:Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->createVolumeSeekBarPanel(Landroid/view/View;IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public onDestroyView()V
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mVolumePanelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;

    .line 90
    invoke-virtual {v1}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->release()V

    goto :goto_6

    :cond_16
    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mStreamTypeHeadIconImage:Landroid/graphics/drawable/Drawable;

    .line 94
    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mStreamTypeTailIconImage:Landroid/graphics/drawable/Drawable;

    .line 95
    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mContext:Landroid/content/Context;

    const-string p0, "VolumeSettings"

    const-string v0, "onDestroyView"

    .line 96
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mVolumeCallback:Lcom/meizu/settings/soundandvibrate/VolumeSettings$VolumePanelCallback;

    invoke-virtual {v0}, Lcom/meizu/settings/soundandvibrate/VolumeSettings$VolumePanelCallback;->stopSample()V

    .line 164
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_17

    instance-of v0, p0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_17

    .line 165
    check-cast p0, Lcom/android/settings/SettingsActivity;

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getMzSettingsActivity()Lcom/meizu/settings/MzSettingsActivity;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/settings/MzSettingsActivity;->setOnKeyListener(Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;)V

    :cond_17
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 156
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_13

    .line 157
    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 158
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getMzSettingsActivity()Lcom/meizu/settings/MzSettingsActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->mVolumeKeyListener:Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;

    invoke-virtual {v0, p0}, Lcom/meizu/settings/MzSettingsActivity;->setOnKeyListener(Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;)V

    :cond_13
    return-void
.end method

.method public onStop()V
    .registers 1

    return-void
.end method
