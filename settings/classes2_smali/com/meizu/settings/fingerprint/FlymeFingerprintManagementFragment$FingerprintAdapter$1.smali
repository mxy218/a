.class Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$1;
.super Ljava/lang/Object;
.source "FlymeFingerprintManagementFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->onBindViewHolder(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;

.field final synthetic val$holder:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;I)V
    .registers 4

    .line 784
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$1;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;

    iput-object p2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$1;->val$holder:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;

    iput p3, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 787
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$1;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;

    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$1;->val$holder:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;

    iget p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$1;->val$position:I

    invoke-static {p1, v0, p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->access$2000(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;I)V

    return-void
.end method
