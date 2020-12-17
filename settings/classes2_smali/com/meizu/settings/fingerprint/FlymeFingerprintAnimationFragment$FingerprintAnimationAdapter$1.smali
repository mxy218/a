.class Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$1;
.super Ljava/lang/Object;
.source "FlymeFingerprintAnimationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;->onBindViewHolder(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;I)V
    .registers 3

    .line 137
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$1;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;

    iput p2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 140
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$1;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;

    iget-object p1, p1, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->access$500(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationDemo;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationDemo;->access$200(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationDemo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->access$1000(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$1;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;

    iget-object p1, p1, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->access$300(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$1;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;

    iget-object v0, v0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;

    .line 142
    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->access$500(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationDemo;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationDemo;->access$100(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationDemo;)I

    move-result v0

    const-string v1, "fingerprint_animation"

    .line 141
    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 143
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$1;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;

    iget v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$1;->val$position:I

    invoke-static {p1, v0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;->access$1102(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;I)I

    .line 144
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$1;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
