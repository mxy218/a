.class public Lcom/android/systemui/settings/ToggleSliderView;
.super Landroid/widget/RelativeLayout;
.source "ToggleSliderView.java"

# interfaces
.implements Lcom/android/systemui/settings/ToggleSlider;


# instance fields
.field private final mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mLabel:Landroid/widget/TextView;

.field private mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

.field private mMirror:Lcom/android/systemui/settings/ToggleSliderView;

.field private mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

.field private mToggle:Landroid/widget/CompoundButton;

.field private mTracking:Z

.field private final mTrackingListener:Lcom/android/systemui/settings/ToggleSeekBar$OnSeekBarTrackingListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/settings/ToggleSliderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/settings/ToggleSliderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 162
    new-instance v0, Lcom/android/systemui/settings/ToggleSliderView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/ToggleSliderView$1;-><init>(Lcom/android/systemui/settings/ToggleSliderView;)V

    iput-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 178
    new-instance v0, Lcom/android/systemui/settings/ToggleSliderView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/ToggleSliderView$2;-><init>(Lcom/android/systemui/settings/ToggleSliderView;)V

    iput-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 233
    new-instance v0, Lcom/android/systemui/settings/ToggleSliderView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/ToggleSliderView$3;-><init>(Lcom/android/systemui/settings/ToggleSliderView;)V

    iput-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mTrackingListener:Lcom/android/systemui/settings/ToggleSeekBar$OnSeekBarTrackingListener;

    .line 62
    sget v0, Lcom/android/systemui/R$layout;->mz_status_bar_toggle_slider:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 66
    sget-object v0, Lcom/android/systemui/R$styleable;->ToggleSliderView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 69
    sget p2, Lcom/android/systemui/R$id;->toggle:I

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CompoundButton;

    iput-object p2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    .line 70
    iget-object p2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    iget-object p3, p0, Lcom/android/systemui/settings/ToggleSliderView;->mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p2, p3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 72
    sget p2, Lcom/android/systemui/R$id;->slider:I

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/settings/ToggleSeekBar;

    iput-object p2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    .line 73
    iget-object p2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    iget-object p3, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 75
    sget p2, Lcom/android/systemui/R$id;->label:I

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mLabel:Landroid/widget/TextView;

    .line 76
    iget-object p2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mLabel:Landroid/widget/TextView;

    sget p3, Lcom/android/systemui/R$styleable;->ToggleSliderView_text:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object p2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/systemui/settings/ToggleSeekBar;->setAccessibilityLabel(Ljava/lang/String;)V

    .line 81
    iget-object p2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    iget-object p3, p0, Lcom/android/systemui/settings/ToggleSliderView;->mTrackingListener:Lcom/android/systemui/settings/ToggleSeekBar$OnSeekBarTrackingListener;

    invoke-virtual {p2, p3}, Lcom/android/systemui/settings/ToggleSeekBar;->setOnSeekBarTrackingListener(Lcom/android/systemui/settings/ToggleSeekBar$OnSeekBarTrackingListener;)V

    .line 82
    sget p2, Lcom/android/systemui/R$id;->brightness_reduce:I

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    const/high16 p2, -0x67000000

    .line 83
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 84
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->actInMzNightMode(I)V

    .line 87
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSeekBar;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSlider$Listener;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/settings/ToggleSliderView;)Z
    .registers 1

    .line 39
    iget-boolean p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mTracking:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/settings/ToggleSliderView;Z)Z
    .registers 2

    .line 39
    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mTracking:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSliderView;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/widget/CompoundButton;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/content/Context;
    .registers 1

    .line 39
    iget-object p0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 154
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    if-eqz v0, :cond_10

    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/settings/ToggleSliderView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 157
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 159
    :cond_10
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getTracking()Z
    .registers 1

    .line 230
    iget-boolean p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mTracking:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 105
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    if-eqz v0, :cond_a

    .line 107
    invoke-interface {v0, p0}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onInit(Lcom/android/systemui/settings/ToggleSlider;)V

    :cond_a
    return-void
.end method

.method public setChecked(Z)V
    .registers 2

    .line 123
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method public setEnforcedAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .registers 6

    .line 112
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_8

    move v3, v1

    goto :goto_9

    :cond_8
    move v3, v2

    :goto_9
    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    if-nez p1, :cond_11

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 114
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/ToggleSeekBar;->setEnforcedAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

.method public setMax(I)V
    .registers 3

    .line 133
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 134
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    if-eqz p0, :cond_c

    .line 135
    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/ToggleSliderView;->setMax(I)V

    :cond_c
    return-void
.end method

.method public setMirror(Lcom/android/systemui/settings/ToggleSliderView;)V
    .registers 3

    .line 91
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    .line 92
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    if-eqz p1, :cond_25

    .line 93
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/settings/ToggleSliderView;->setChecked(Z)V

    .line 94
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/settings/ToggleSliderView;->setMax(I)V

    .line 95
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/settings/ToggleSliderView;->setValue(I)V

    :cond_25
    return-void
.end method

.method public setMirrorController(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    return-void
.end method

.method public setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    return-void
.end method

.method public setValue(I)V
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 142
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    if-eqz p0, :cond_c

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/ToggleSliderView;->setValue(I)V

    :cond_c
    return-void
.end method
