.class Lcom/flyme/systemui/fingerprint/IFingerprintCallbackManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IFingerprintCallbackManager.java"

# interfaces
.implements Lcom/flyme/systemui/fingerprint/IFingerprintCallbackManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/fingerprint/IFingerprintCallbackManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/flyme/systemui/fingerprint/IFingerprintCallbackManager;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/flyme/systemui/fingerprint/IFingerprintCallbackManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/flyme/systemui/fingerprint/IFingerprintCallbackManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method
