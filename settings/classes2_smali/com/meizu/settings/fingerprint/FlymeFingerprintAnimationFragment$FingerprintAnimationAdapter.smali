.class Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;
.super Lflyme/support/v7/widget/RecyclerView$Adapter;
.source "FlymeFingerprintAnimationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FingerprintAnimationAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lflyme/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private selectedPosition:I

.field final synthetic this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;


# direct methods
.method private constructor <init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;)V
    .registers 2

    .line 123
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;

    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 p1, -0x1

    .line 124
    iput p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;->selectedPosition:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$1;)V
    .registers 3

    .line 123
    invoke-direct {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;-><init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;)V

    return-void
.end method

.method static synthetic access$1102(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;I)I
    .registers 2

    .line 123
    iput p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;->selectedPosition:I

    return p1
.end method


# virtual methods
.method public getItemCount()I
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;

    invoke-static {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->access$500(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$MyViewHolder;I)V
    .registers 5

    .line 134
    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$MyViewHolder;->access$400(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$MyViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;->selectedPosition:I

    if-ne v1, p2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 135
    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$MyViewHolder;->access$700(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$MyViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;

    invoke-static {v1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->access$500(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationDemo;

    invoke-static {v1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationDemo;->access$600(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationDemo;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 136
    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$MyViewHolder;->access$900(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$MyViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;

    invoke-static {v1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->access$500(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationDemo;

    invoke-static {v1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationDemo;->access$800(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationDemo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$MyViewHolder;->access$400(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$MyViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object p1

    new-instance v0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$1;-><init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 123
    check-cast p1, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;->onBindViewHolder(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$MyViewHolder;
    .registers 5

    .line 127
    new-instance p1, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$MyViewHolder;

    iget-object p2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;

    invoke-static {p2}, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->access$300(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0108

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$MyViewHolder;-><init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;Landroid/view/View;)V

    return-object p1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$MyViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public setItemSelect(I)V
    .registers 2

    .line 155
    iput p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;->selectedPosition:I

    .line 156
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
