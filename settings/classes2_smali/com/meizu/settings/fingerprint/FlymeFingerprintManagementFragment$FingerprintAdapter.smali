.class Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;
.super Lflyme/support/v7/widget/RecyclerView$Adapter;
.source "FlymeFingerprintManagementFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FingerprintAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lflyme/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;


# direct methods
.method private constructor <init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)V
    .registers 2

    .line 769
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$1;)V
    .registers 3

    .line 769
    invoke-direct {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;-><init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;I)V
    .registers 3

    .line 769
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->showFingerprintNameDialog(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;I)V

    return-void
.end method

.method private showFingerprintNameDialog(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;I)V
    .registers 10

    .line 820
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$2400(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 821
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$2400(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 822
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {v0, v1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$2402(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 824
    :cond_17
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {v0, p2}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$002(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;I)I

    .line 825
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$1400(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {v2}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$700(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v0, p2}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->getFingerPrintName(I)Ljava/lang/String;

    move-result-object p2

    .line 826
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$600(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0d00dc

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0736

    .line 827
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/textinputlayout/TextInputLayout;

    const/4 v3, 0x0

    .line 828
    invoke-virtual {v2, v3}, Lcom/meizu/textinputlayout/TextInputLayout;->setErrorEnabled(Z)V

    .line 829
    iget-object v4, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    const v5, 0x7f0a04c3

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-static {v4, v5}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$2502(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 830
    iget-object v4, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {v4}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$2500(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 831
    iget-object v4, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {v4}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$2500(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 832
    iget-object v4, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {v4}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$2500(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Landroid/widget/EditText;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 833
    iget-object v4, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {v4}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$2500(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 834
    iget-object v4, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {v4}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$2500(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Landroid/widget/EditText;

    move-result-object v4

    const/high16 v6, 0x80000

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 835
    iget-object v4, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {v4}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$2500(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Landroid/widget/EditText;

    move-result-object v4

    new-instance v6, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$3;

    invoke-direct {v6, p0, v2}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$3;-><init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;Lcom/meizu/textinputlayout/TextInputLayout;)V

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 868
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {v4}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$600(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 869
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f12088d

    .line 870
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x104000a

    .line 871
    new-instance v6, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$4;

    invoke-direct {v6, p0, p2, p1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$4;-><init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;Ljava/lang/String;Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;)V

    invoke-virtual {v2, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000

    .line 882
    invoke-virtual {v2, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 883
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 884
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 885
    new-instance p2, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$5;

    invoke-direct {p2, p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$5;-><init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 890
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 891
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 892
    iget-object p2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {p2, p1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$2402(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 893
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$2400(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Landroid/app/AlertDialog;

    move-result-object p1

    const p2, 0x1020019

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 894
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$2500(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_102

    goto :goto_103

    :cond_102
    move v3, v5

    :goto_103
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 1

    .line 803
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$700(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;I)V
    .registers 5

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindViewHolder:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeFingerprintManagementFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$1400(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {v1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$700(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->getFingerPrintName(I)Ljava/lang/String;

    move-result-object v0

    .line 783
    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;->access$1900(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 784
    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;->access$1900(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$1;-><init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 791
    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;->access$2300(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;)Landroid/widget/LinearLayout;

    move-result-object p1

    new-instance v0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$2;-><init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 769
    check-cast p1, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->onBindViewHolder(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;
    .registers 5

    .line 773
    new-instance p1, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;

    iget-object p2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {p2}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$600(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d01d5

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;-><init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;Landroid/view/View;)V

    return-object p1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 769
    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;

    move-result-object p0

    return-object p0
.end method
