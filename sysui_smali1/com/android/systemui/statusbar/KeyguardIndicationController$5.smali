.class Lcom/android/systemui/statusbar/KeyguardIndicationController$5;
.super Ljava/lang/Object;
.source "KeyguardIndicationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyguardIndicationController;->onUnlockMethodStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .registers 2

    .line 721
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 724
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$900(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    return-void
.end method
