.class public Lcom/flyme/systemui/MzBatteryMeterView;
.super Landroid/widget/ImageView;
.source "MzBatteryMeterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallbackExt;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field protected mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private final mDrawable:Lcom/flyme/systemui/BatteryMeterDrawable;

.field private final mSlotBattery:Ljava/lang/String;

.field private mTunerService:Lcom/android/systemui/tuner/TunerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1, v0, v1}, Lcom/flyme/systemui/MzBatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/flyme/systemui/MzBatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    sget-object v0, Lcom/android/systemui/R$styleable;->BatteryMeterView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 60
    sget p3, Lcom/android/systemui/R$styleable;->BatteryMeterView_frameColor:I

    sget v0, Lcom/android/systemui/R$color;->batterymeter_frame_color:I

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 60
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 62
    new-instance v0, Lcom/flyme/systemui/BatteryMeterDrawable;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p1, v2, p3}, Lcom/flyme/systemui/BatteryMeterDrawable;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/flyme/systemui/MzBatteryMeterView;->mDrawable:Lcom/flyme/systemui/BatteryMeterDrawable;

    .line 63
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const p2, 0x10406b0

    .line 65
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemui/MzBatteryMeterView;->mSlotBattery:Ljava/lang/String;

    .line 68
    new-instance p1, Lcom/android/systemui/util/Utils$DisableStateTracker;

    const/4 p2, 0x2

    invoke-direct {p1, v1, p2}, Lcom/android/systemui/util/Utils$DisableStateTracker;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 71
    const-class p1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    iput-object p1, p0, Lcom/flyme/systemui/MzBatteryMeterView;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 72
    const-class p1, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object p1, p0, Lcom/flyme/systemui/MzBatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onAttachedToWindow()V
    .registers 3

    .line 91
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 92
    iget-object v0, p0, Lcom/flyme/systemui/MzBatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    if-eqz v0, :cond_a

    .line 93
    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 95
    :cond_a
    iget-object v0, p0, Lcom/flyme/systemui/MzBatteryMeterView;->mDrawable:Lcom/flyme/systemui/BatteryMeterDrawable;

    invoke-virtual {v0}, Lcom/flyme/systemui/BatteryMeterDrawable;->startListening()V

    .line 96
    iget-object v0, p0, Lcom/flyme/systemui/MzBatteryMeterView;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    const-string v1, "icon_blacklist"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .registers 6

    .line 112
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p3, :cond_9

    sget p3, Lcom/android/systemui/R$string;->accessibility_battery_level_charging:I

    goto :goto_b

    .line 113
    :cond_9
    sget p3, Lcom/android/systemui/R$string;->accessibility_battery_level:I

    :goto_b
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    .line 112
    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 101
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 102
    iget-object v0, p0, Lcom/flyme/systemui/MzBatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    if-eqz v0, :cond_a

    .line 103
    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 105
    :cond_a
    iget-object v0, p0, Lcom/flyme/systemui/MzBatteryMeterView;->mDrawable:Lcom/flyme/systemui/BatteryMeterDrawable;

    invoke-virtual {v0}, Lcom/flyme/systemui/BatteryMeterDrawable;->stopListening()V

    .line 106
    iget-object v0, p0, Lcom/flyme/systemui/MzBatteryMeterView;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .registers 2

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "icon_blacklist"

    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 84
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p1

    .line 85
    iget-object p2, p0, Lcom/flyme/systemui/MzBatteryMeterView;->mSlotBattery:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    const/16 p1, 0x8

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1b
    return-void
.end method
