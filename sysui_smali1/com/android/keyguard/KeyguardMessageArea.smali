.class public Lcom/android/keyguard/KeyguardMessageArea;
.super Landroid/widget/TextView;
.source "KeyguardMessageArea.java"

# interfaces
.implements Lcom/android/keyguard/SecurityMessageDisplay;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;
    }
.end annotation


# static fields
.field private static final ANNOUNCE_TOKEN:Ljava/lang/Object;


# instance fields
.field private mBouncerVisible:Z

.field private final mClearMessageRunnable:Ljava/lang/Runnable;

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mDefaultColor:I

.field private mDefaultColorState:Landroid/content/res/ColorStateList;

.field private final mHandler:Landroid/os/Handler;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mMatched:Z

.field private mMessage:Ljava/lang/CharSequence;

.field private mNextMessageColor:I

.field private mNextMessageColorState:Landroid/content/res/ColorStateList;

.field private mPermanaentMsg:Ljava/lang/String;

.field mTimeout:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 63
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mNextMessageColorState:Landroid/content/res/ColorStateList;

    .line 66
    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardMessageArea$1;-><init>(Lcom/android/keyguard/KeyguardMessageArea;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 330
    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardMessageArea$2;-><init>(Lcom/android/keyguard/KeyguardMessageArea;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    .line 339
    iput-wide v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    .line 340
    iput p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mNextMessageColor:I

    .line 84
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This constructor should never be invoked"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .registers 7

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 63
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mNextMessageColorState:Landroid/content/res/ColorStateList;

    .line 66
    new-instance p2, Lcom/android/keyguard/KeyguardMessageArea$1;

    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardMessageArea$1;-><init>(Lcom/android/keyguard/KeyguardMessageArea;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 330
    new-instance p2, Lcom/android/keyguard/KeyguardMessageArea$2;

    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardMessageArea$2;-><init>(Lcom/android/keyguard/KeyguardMessageArea;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    .line 339
    iput-wide v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    .line 340
    iput p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mNextMessageColor:I

    const/4 p1, 0x2

    const/4 p2, 0x0

    .line 96
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 98
    iget-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p3, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 99
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    .line 100
    iput-object p4, p0, Lcom/android/keyguard/KeyguardMessageArea;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 101
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->onThemeChanged()V

    .line 104
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mDefaultColor:I

    .line 105
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    .line 106
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$string;->keyguard_fp_permanent_lockout:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mPermanaentMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .registers 5
    .param p1  # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "view_context"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 90
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/keyguard/KeyguardMessageArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardMessageArea;Z)Z
    .registers 2

    .line 46
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBouncerVisible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardMessageArea;)V
    .registers 1

    .line 46
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/keyguard/KeyguardMessageArea;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    return-object p1
.end method

.method private clearMessage()V
    .registers 3

    .line 214
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 215
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/KeyguardThemeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->usedSystemUITheme()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 216
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/KeyguardThemeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getTipsColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 218
    :cond_20
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static findSecurityMessageDisplay(Landroid/view/View;)Lcom/android/keyguard/KeyguardMessageArea;
    .registers 4

    .line 178
    sget v0, Lcom/android/systemui/R$id;->keyguard_message_area:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    if-nez v0, :cond_16

    .line 180
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->keyguard_message_area:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    :cond_16
    if-eqz v0, :cond_19

    return-object v0

    .line 183
    :cond_19
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find keyguard_message_area in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private securityMessageChanged(Ljava/lang/CharSequence;)V
    .registers 7

    .line 195
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    .line 196
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    .line 198
    iget-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 199
    iget-wide v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1b

    .line 200
    iget-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 203
    :cond_1b
    iget-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 204
    iget-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/android/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    .line 205
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0xfa

    add-long/2addr v1, v3

    .line 204
    invoke-virtual {p1, v0, p0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method private update()V
    .registers 3

    .line 223
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    .line 224
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x4

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/KeyguardThemeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->usedSystemUITheme()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 236
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/KeyguardThemeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getTipsColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2a
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    .line 112
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 113
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->onThemeChanged()V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .registers 1

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 119
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 120
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 190
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 191
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public onThemeChanged()V
    .registers 5

    .line 130
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [I

    sget v2, Lcom/android/systemui/R$attr;->wallpaperTextColor:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/high16 v1, -0x10000

    .line 133
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 134
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 135
    iput-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mDefaultColorState:Landroid/content/res/ColorStateList;

    .line 136
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    return-void
.end method

.method public setMessage(I)V
    .registers 3

    if-eqz p1, :cond_f

    .line 163
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    .line 165
    :goto_10
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMessage(IZ)V
    .registers 5

    .line 289
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mPermanaentMsg:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mMatched:Z

    if-nez v0, :cond_11

    return-void

    :cond_11
    if-eqz p1, :cond_25

    if-eqz p2, :cond_25

    .line 293
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 294
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->securityMessageChanged(Ljava/lang/CharSequence;)V

    goto :goto_28

    .line 296
    :cond_25
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->clearMessage()V

    :goto_28
    return-void
.end method

.method public varargs setMessage(IZ[Ljava/lang/Object;)V
    .registers 6

    .line 302
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mPermanaentMsg:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mMatched:Z

    if-nez v0, :cond_11

    return-void

    :cond_11
    if-eqz p1, :cond_21

    if-eqz p2, :cond_21

    .line 306
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 307
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->securityMessageChanged(Ljava/lang/CharSequence;)V

    goto :goto_24

    .line 309
    :cond_21
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->clearMessage()V

    :goto_24
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 3

    .line 152
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 153
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->securityMessageChanged(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 155
    :cond_a
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->clearMessage()V

    :goto_d
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;Z)V
    .registers 5

    .line 277
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mPermanaentMsg:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mMatched:Z

    if-nez v0, :cond_11

    return-void

    .line 280
    :cond_11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    if-eqz p2, :cond_1d

    .line 281
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->securityMessageChanged(Ljava/lang/CharSequence;)V

    goto :goto_20

    .line 283
    :cond_1d
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->clearMessage()V

    :goto_20
    return-void
.end method

.method public setNextMessageColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mNextMessageColorState:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setTimeout(I)V
    .registers 4

    int-to-long v0, p1

    .line 315
    iput-wide v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    return-void
.end method
