.class Lcom/android/keyguard/KeyguardSecurityContainer$3;
.super Ljava/lang/Object;
.source "KeyguardSecurityContainer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSecurityContainer;->showCountdownWipeDialog(I)V
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

    .line 886
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$3;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 888
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$3;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$1100(Lcom/android/keyguard/KeyguardSecurityContainer;)V

    return-void
.end method
