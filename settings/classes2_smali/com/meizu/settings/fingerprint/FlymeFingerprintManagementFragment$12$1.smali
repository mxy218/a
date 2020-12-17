.class Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12$1;
.super Ljava/lang/Object;
.source "FlymeFingerprintManagementFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;->onDeleteComplete(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;Z)V
    .registers 3

    .line 706
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12$1;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;

    iput-boolean p2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12$1;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete fingerprint  result:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12$1;->val$success:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeFingerprintManagementFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12$1;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;

    iget-object v0, v0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$1400(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12$1;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;

    iget-object v0, v0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$1400(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->getFingerPrintCount()I

    move-result v0

    if-nez v0, :cond_68

    const-string v0, "disable fp lock function"

    .line 712
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12$1;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;

    iget-object v0, v0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$1400(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->setScreenUnlockWithFingerprintEnable(Z)V

    .line 714
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12$1;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;

    iget-object v0, v0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$1400(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->setAppUnlockWithFingerprintEnable(Z)V

    .line 715
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12$1;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;

    iget-object v0, v0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$1400(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->setDocumentUnlockWithFingerprintEnable(Z)V

    .line 716
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12$1;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;

    iget-object v0, v0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$600(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "mz_fingerprint_use_payment"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 718
    :cond_68
    iget-boolean v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12$1;->val$success:Z

    if-eqz v0, :cond_e8

    .line 719
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12$1;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;

    iget-object v0, v0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$700(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12$1;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;

    iget-object v3, v3, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {v3}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$1500(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 720
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12$1;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;

    iget-object v0, v0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$800(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;

    move-result-object v0

    iget-object v3, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12$1;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;

    iget-object v3, v3, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {v3}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$1500(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lflyme/support/v7/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyItemRemoved:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12$1;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;

    iget-object v3, v3, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {v3}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$1500(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12$1;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;

    iget-object v0, v0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$1600(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)V

    .line 723
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12$1;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;

    iget-object v0, v0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$1700(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)V

    .line 724
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12$1;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;

    iget-object v0, v0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$1800(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)V

    .line 726
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12$1;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;

    iget-object v0, v0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$700(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_e1

    .line 727
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12$1;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;

    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$600(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 730
    :cond_e1
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12$1;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;

    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {p0, v2}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$100(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;Z)V

    :cond_e8
    return-void
.end method
