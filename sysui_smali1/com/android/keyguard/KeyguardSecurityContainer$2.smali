.class Lcom/android/keyguard/KeyguardSecurityContainer$2;
.super Ljava/lang/Object;
.source "KeyguardSecurityContainer.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecurityContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecurityContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V
    .registers 2

    .line 728
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$2;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(ZI)V
    .registers 3

    return-void
.end method

.method public onUserInput()V
    .registers 1

    return-void
.end method

.method public onVerifyCallback(I)V
    .registers 2

    return-void
.end method

.method public reportUnlockAttempt(IZI)V
    .registers 4

    return-void
.end method

.method public reset()V
    .registers 1

    return-void
.end method

.method public userActivity()V
    .registers 1

    return-void
.end method
