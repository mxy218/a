.class Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;
.super Lflyme/support/v7/widget/RecyclerView$ViewHolder;
.source "FlymeFingerprintManagementFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyViewHolder"
.end annotation


# instance fields
.field private linearLayoutDelete:Landroid/widget/LinearLayout;

.field private textView:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;Landroid/view/View;)V
    .registers 3

    .line 811
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;

    .line 812
    invoke-direct {p0, p2}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0742

    .line 813
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;->textView:Landroid/widget/TextView;

    const p1, 0x7f0a03a9

    .line 814
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;->linearLayoutDelete:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$1900(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;)Landroid/widget/TextView;
    .registers 1

    .line 806
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;->textView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;)Landroid/widget/LinearLayout;
    .registers 1

    .line 806
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;->linearLayoutDelete:Landroid/widget/LinearLayout;

    return-object p0
.end method
