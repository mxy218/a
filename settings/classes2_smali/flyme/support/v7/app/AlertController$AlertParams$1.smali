.class Lflyme/support/v7/app/AlertController$AlertParams$1;
.super Landroid/widget/ArrayAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflyme/support/v7/app/AlertController$AlertParams;->createListView(Lflyme/support/v7/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/app/AlertController$AlertParams;

.field final synthetic val$listView:Lflyme/support/v7/app/AlertController$RecycleListView;


# direct methods
.method constructor <init>(Lflyme/support/v7/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lflyme/support/v7/app/AlertController$RecycleListView;)V
    .registers 7

    .line 964
    iput-object p1, p0, Lflyme/support/v7/app/AlertController$AlertParams$1;->this$0:Lflyme/support/v7/app/AlertController$AlertParams;

    iput-object p6, p0, Lflyme/support/v7/app/AlertController$AlertParams$1;->val$listView:Lflyme/support/v7/app/AlertController$RecycleListView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 967
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 968
    iget-object p3, p0, Lflyme/support/v7/app/AlertController$AlertParams$1;->this$0:Lflyme/support/v7/app/AlertController$AlertParams;

    iget-object p3, p3, Lflyme/support/v7/app/AlertController$AlertParams;->mCheckedItems:[Z

    if-eqz p3, :cond_14

    .line 969
    aget-boolean p3, p3, p1

    if-eqz p3, :cond_14

    .line 971
    iget-object p0, p0, Lflyme/support/v7/app/AlertController$AlertParams$1;->val$listView:Lflyme/support/v7/app/AlertController$RecycleListView;

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_14
    return-object p2
.end method
