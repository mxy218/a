.class Lcom/android/keyguard/clock/SmallClockPosition;
.super Ljava/lang/Object;
.source "SmallClockPosition.java"


# instance fields
.field private final mBurnInOffsetY:I

.field private mDarkAmount:F

.field private final mKeyguardLockHeight:I

.field private final mKeyguardLockPadding:I

.field private final mStatusBarHeight:I


# direct methods
.method constructor <init>(IIII)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/android/keyguard/clock/SmallClockPosition;->mStatusBarHeight:I

    .line 54
    iput p2, p0, Lcom/android/keyguard/clock/SmallClockPosition;->mKeyguardLockPadding:I

    .line 55
    iput p3, p0, Lcom/android/keyguard/clock/SmallClockPosition;->mKeyguardLockHeight:I

    .line 56
    iput p4, p0, Lcom/android/keyguard/clock/SmallClockPosition;->mBurnInOffsetY:I

    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;)V
    .registers 6

    .line 44
    sget v0, Lcom/android/systemui/R$dimen;->status_bar_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v1, Lcom/android/systemui/R$dimen;->keyguard_lock_padding:I

    .line 45
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/android/systemui/R$dimen;->keyguard_lock_height:I

    .line 46
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lcom/android/systemui/R$dimen;->burn_in_prevention_offset_y:I

    .line 47
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 44
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/keyguard/clock/SmallClockPosition;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method getPreferredY()I
    .registers 6

    .line 71
    iget v0, p0, Lcom/android/keyguard/clock/SmallClockPosition;->mStatusBarHeight:I

    iget v1, p0, Lcom/android/keyguard/clock/SmallClockPosition;->mKeyguardLockHeight:I

    add-int v2, v0, v1

    iget v3, p0, Lcom/android/keyguard/clock/SmallClockPosition;->mKeyguardLockPadding:I

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v2, v4

    iget v4, p0, Lcom/android/keyguard/clock/SmallClockPosition;->mBurnInOffsetY:I

    add-int/2addr v2, v4

    add-int/2addr v0, v1

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    int-to-float v0, v0

    int-to-float v1, v2

    .line 75
    iget p0, p0, Lcom/android/keyguard/clock/SmallClockPosition;->mDarkAmount:F

    invoke-static {v0, v1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method setDarkAmount(F)V
    .registers 2

    .line 63
    iput p1, p0, Lcom/android/keyguard/clock/SmallClockPosition;->mDarkAmount:F

    return-void
.end method
