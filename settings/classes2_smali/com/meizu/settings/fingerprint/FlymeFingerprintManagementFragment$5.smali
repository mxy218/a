.class Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$5;
.super Ljava/lang/Object;
.source "FlymeFingerprintManagementFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->refreshFingerprintView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

.field final synthetic val$newFpidsArray:[I

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;[II)V
    .registers 4

    .line 471
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$5;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    iput-object p2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$5;->val$newFpidsArray:[I

    iput p3, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$5;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 474
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$5;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$600(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$5;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    .line 475
    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$700(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$5;->val$newFpidsArray:[I

    iget v2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$5;->val$pos:I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_43

    .line 479
    :cond_1f
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$5;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$700(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$5;->val$pos:I

    iget-object v2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$5;->val$newFpidsArray:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 480
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$5;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$800(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;

    move-result-object v0

    iget v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$5;->val$pos:I

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 482
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$5;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$900(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)V

    return-void

    :cond_43
    :goto_43
    const-string p0, "FlymeFingerprintManagementFragment"

    const-string v0, "skip show fingerprint"

    .line 476
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
