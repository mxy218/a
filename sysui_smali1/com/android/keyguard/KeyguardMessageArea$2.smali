.class Lcom/android/keyguard/KeyguardMessageArea$2;
.super Ljava/lang/Object;
.source "KeyguardMessageArea.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardMessageArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardMessageArea;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardMessageArea;)V
    .registers 2

    .line 330
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 333
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->access$202(Lcom/android/keyguard/KeyguardMessageArea;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 334
    iget-object p0, p0, Lcom/android/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardMessageArea;->access$100(Lcom/android/keyguard/KeyguardMessageArea;)V

    return-void
.end method
