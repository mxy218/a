.class Lcom/android/server/biometrics/BiometricUserState$1;
.super Ljava/lang/Object;
.source "BiometricUserState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricUserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/BiometricUserState;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/BiometricUserState;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricUserState$1;->this$0:Lcom/android/server/biometrics/BiometricUserState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricUserState$1;->this$0:Lcom/android/server/biometrics/BiometricUserState;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricUserState;->doWriteState()V

    .line 56
    return-void
.end method
