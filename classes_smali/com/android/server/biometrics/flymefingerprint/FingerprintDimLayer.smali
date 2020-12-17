.class public Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;
.super Ljava/lang/Object;
.source "FingerprintDimLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$NaturalSurfaceLayout;,
        Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "FingerprintDimLayer"

.field private static mFDC:Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mSurfaceLayout:Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$NaturalSurfaceLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"  # Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;->mContext:Landroid/content/Context;

    .line 42
    new-instance v0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;

    invoke-direct {v0, p0, p1}, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;-><init>(Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;->mFDC:Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;

    .line 43
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;)Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$NaturalSurfaceLayout;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;

    .line 31
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;->mSurfaceLayout:Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$NaturalSurfaceLayout;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$NaturalSurfaceLayout;)Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$NaturalSurfaceLayout;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;
    .param p1, "x1"  # Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$NaturalSurfaceLayout;

    .line 31
    iput-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;->mSurfaceLayout:Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$NaturalSurfaceLayout;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;)Landroid/hardware/display/DisplayManagerInternal;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;

    .line 31
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 51
    sget-object v0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;->mFDC:Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;

    invoke-virtual {v0}, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->dismiss()V

    .line 52
    return-void
.end method

.method public draw(F)V
    .registers 3
    .param p1, "alpha"  # F

    .line 47
    sget-object v0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;->mFDC:Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->draw(F)V

    .line 48
    return-void
.end method

.method public setScreenState(Z)V
    .registers 3
    .param p1, "screenOn"  # Z

    .line 55
    sget-object v0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;->mFDC:Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->setScreenOn(Z)V

    .line 56
    return-void
.end method
