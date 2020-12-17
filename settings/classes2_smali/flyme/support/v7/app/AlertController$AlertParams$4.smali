.class Lflyme/support/v7/app/AlertController$AlertParams$4;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflyme/support/v7/app/AlertController$AlertParams;->createListView(Lflyme/support/v7/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/app/AlertController$AlertParams;

.field final synthetic val$dialog:Lflyme/support/v7/app/AlertController;

.field final synthetic val$listView:Lflyme/support/v7/app/AlertController$RecycleListView;


# direct methods
.method constructor <init>(Lflyme/support/v7/app/AlertController$AlertParams;Lflyme/support/v7/app/AlertController$RecycleListView;Lflyme/support/v7/app/AlertController;)V
    .registers 4

    .line 1040
    iput-object p1, p0, Lflyme/support/v7/app/AlertController$AlertParams$4;->this$0:Lflyme/support/v7/app/AlertController$AlertParams;

    iput-object p2, p0, Lflyme/support/v7/app/AlertController$AlertParams$4;->val$listView:Lflyme/support/v7/app/AlertController$RecycleListView;

    iput-object p3, p0, Lflyme/support/v7/app/AlertController$AlertParams$4;->val$dialog:Lflyme/support/v7/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1043
    iget-object p1, p0, Lflyme/support/v7/app/AlertController$AlertParams$4;->this$0:Lflyme/support/v7/app/AlertController$AlertParams;

    iget-object p1, p1, Lflyme/support/v7/app/AlertController$AlertParams;->mCheckedItems:[Z

    if-eqz p1, :cond_e

    .line 1044
    iget-object p2, p0, Lflyme/support/v7/app/AlertController$AlertParams$4;->val$listView:Lflyme/support/v7/app/AlertController$RecycleListView;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result p2

    aput-boolean p2, p1, p3

    .line 1046
    :cond_e
    iget-object p1, p0, Lflyme/support/v7/app/AlertController$AlertParams$4;->this$0:Lflyme/support/v7/app/AlertController$AlertParams;

    iget-object p1, p1, Lflyme/support/v7/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object p2, p0, Lflyme/support/v7/app/AlertController$AlertParams$4;->val$dialog:Lflyme/support/v7/app/AlertController;

    iget-object p2, p2, Lflyme/support/v7/app/AlertController;->mDialog:Lflyme/support/v7/app/AppCompatDialog;

    iget-object p0, p0, Lflyme/support/v7/app/AlertController$AlertParams$4;->val$listView:Lflyme/support/v7/app/AlertController$RecycleListView;

    invoke-virtual {p0, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result p0

    invoke-interface {p1, p2, p3, p0}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    return-void
.end method
