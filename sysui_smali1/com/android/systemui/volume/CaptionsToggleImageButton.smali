.class public Lcom/android/systemui/volume/CaptionsToggleImageButton;
.super Lcom/android/keyguard/AlphaOptimizedImageButton;
.source "CaptionsToggleImageButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/CaptionsToggleImageButton$ConfirmedTapListener;
    }
.end annotation


# static fields
.field private static final OPTED_OUT_STATE:[I


# instance fields
.field private mCaptionsEnabled:Z

.field private mConfirmedTapListener:Lcom/android/systemui/volume/CaptionsToggleImageButton$ConfirmedTapListener;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private mOptedOut:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 34
    sget v1, Lcom/android/systemui/R$attr;->optedOut:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcom/android/systemui/volume/CaptionsToggleImageButton;->OPTED_OUT_STATE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/AlphaOptimizedImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/android/systemui/volume/CaptionsToggleImageButton;->mCaptionsEnabled:Z

    .line 38
    iput-boolean p1, p0, Lcom/android/systemui/volume/CaptionsToggleImageButton;->mOptedOut:Z

    .line 41
    new-instance p1, Lcom/android/systemui/volume/CaptionsToggleImageButton$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/CaptionsToggleImageButton$1;-><init>(Lcom/android/systemui/volume/CaptionsToggleImageButton;)V

    iput-object p1, p0, Lcom/android/systemui/volume/CaptionsToggleImageButton;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 52
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$string;->volume_odi_captions_content_description:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/volume/CaptionsToggleImageButton;)Z
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/android/systemui/volume/CaptionsToggleImageButton;->tryToSendTapConfirmedEvent()Z

    move-result p0

    return p0
.end method

.method private tryToSendTapConfirmedEvent()Z
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/android/systemui/volume/CaptionsToggleImageButton;->mConfirmedTapListener:Lcom/android/systemui/volume/CaptionsToggleImageButton$ConfirmedTapListener;

    if-eqz p0, :cond_9

    .line 88
    invoke-interface {p0}, Lcom/android/systemui/volume/CaptionsToggleImageButton$ConfirmedTapListener;->onConfirmedTap()V

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public onCreateDrawableState(I)[I
    .registers 2

    add-int/lit8 p1, p1, 0x1

    .line 63
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 64
    iget-boolean p0, p0, Lcom/android/systemui/volume/CaptionsToggleImageButton;->mOptedOut:Z

    if-eqz p0, :cond_f

    .line 65
    sget-object p0, Lcom/android/systemui/volume/CaptionsToggleImageButton;->OPTED_OUT_STATE:[I

    invoke-static {p1, p0}, Landroid/widget/ImageButton;->mergeDrawableStates([I[I)[I

    :cond_f
    return-object p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 57
    iget-object v0, p0, Lcom/android/systemui/volume/CaptionsToggleImageButton;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 58
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
