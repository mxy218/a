.class Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$MyViewHolder;
.super Lflyme/support/v7/widget/RecyclerView$ViewHolder;
.source "FlymeFingerprintAnimationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyViewHolder"
.end annotation


# instance fields
.field private animationImageView:Landroid/widget/ImageView;

.field private animationNameTextView:Landroid/widget/TextView;

.field private relativeLayout:Landroid/widget/RelativeLayout;

.field final synthetic this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;Landroid/view/View;)V
    .registers 3

    .line 163
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$MyViewHolder;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;

    .line 164
    invoke-direct {p0, p2}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a009a

    .line 165
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$MyViewHolder;->relativeLayout:Landroid/widget/RelativeLayout;

    const p1, 0x7f0a0096

    .line 166
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$MyViewHolder;->animationImageView:Landroid/widget/ImageView;

    const p1, 0x7f0a0099

    .line 167
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$MyViewHolder;->animationNameTextView:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$MyViewHolder;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 159
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$MyViewHolder;->relativeLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$MyViewHolder;)Landroid/widget/ImageView;
    .registers 1

    .line 159
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$MyViewHolder;->animationImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$MyViewHolder;)Landroid/widget/TextView;
    .registers 1

    .line 159
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter$MyViewHolder;->animationNameTextView:Landroid/widget/TextView;

    return-object p0
.end method
