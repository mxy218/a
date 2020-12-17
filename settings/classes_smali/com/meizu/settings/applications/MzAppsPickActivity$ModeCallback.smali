.class Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;
.super Ljava/lang/Object;
.source "MzAppsPickActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/MzAppsPickActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field private mFinishPickMenu:Landroid/view/MenuItem;

.field private mPickAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;


# direct methods
.method private constructor <init>(Lcom/meizu/settings/applications/MzAppsPickActivity;)V
    .registers 2

    .line 509
    iput-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->mPickAppList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/settings/applications/MzAppsPickActivity;Lcom/meizu/settings/applications/MzAppsPickActivity$1;)V
    .registers 3

    .line 509
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;-><init>(Lcom/meizu/settings/applications/MzAppsPickActivity;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;)Ljava/util/List;
    .registers 1

    .line 509
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->mPickAppList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;)V
    .registers 1

    .line 509
    invoke-direct {p0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->handleCheckAll()V

    return-void
.end method

.method static synthetic access$700(Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;)V
    .registers 1

    .line 509
    invoke-direct {p0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->updateCountChange()V

    return-void
.end method

.method private handleCheckAll()V
    .registers 4

    .line 729
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {v0}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$2400(Lcom/meizu/settings/applications/MzAppsPickActivity;)Lcom/meizu/common/util/ListViewProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/util/ListViewProxy;->checkedAll()Z

    const/4 v0, 0x0

    .line 730
    :goto_a
    iget-object v1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {v1}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1800(Lcom/meizu/settings/applications/MzAppsPickActivity;)Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->access$100(Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_61

    .line 731
    iget-object v1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {v1}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1800(Lcom/meizu/settings/applications/MzAppsPickActivity;)Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->getAppEntry(I)Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    move-result-object v1

    if-eqz v1, :cond_5e

    .line 732
    iget-object v2, v1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_2b

    goto :goto_5e

    .line 735
    :cond_2b
    iget-object v2, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {v2}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1800(Lcom/meizu/settings/applications/MzAppsPickActivity;)Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->access$1900(Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;I)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 737
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":1"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_51

    .line 738
    :cond_4d
    iget-object v1, v1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 739
    :goto_51
    iget-object v2, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->mPickAppList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 740
    iget-object v2, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->mPickAppList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5e
    :goto_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 743
    :cond_61
    invoke-direct {p0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->updateCountChange()V

    return-void
.end method

.method private updateCountChange()V
    .registers 8

    .line 707
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {v0}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1800(Lcom/meizu/settings/applications/MzAppsPickActivity;)Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;

    move-result-object v0

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    .line 708
    invoke-static {v0}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$2200(Lcom/meizu/settings/applications/MzAppsPickActivity;)Lflyme/support/v7/widget/MultiChoiceView;

    move-result-object v0

    if-nez v0, :cond_12

    goto/16 :goto_88

    .line 712
    :cond_12
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {v0}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1100(Lcom/meizu/settings/applications/MzAppsPickActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    .line 713
    iget-object v1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-virtual {v1}, Lflyme/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120d4d

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 714
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 713
    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_4c

    .line 716
    iget-object v1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {v1}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$2200(Lcom/meizu/settings/applications/MzAppsPickActivity;)Lflyme/support/v7/widget/MultiChoiceView;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    .line 717
    invoke-virtual {v2}, Lflyme/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f120ffc

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lflyme/support/v7/widget/ControlTitleBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_55

    .line 719
    :cond_4c
    iget-object v2, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {v2}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$2200(Lcom/meizu/settings/applications/MzAppsPickActivity;)Lflyme/support/v7/widget/MultiChoiceView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lflyme/support/v7/widget/ControlTitleBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 721
    :goto_55
    iget-object v1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {v1}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1200(Lcom/meizu/settings/applications/MzAppsPickActivity;)Lflyme/support/v7/widget/TwoStateTextView;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {v2}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1800(Lcom/meizu/settings/applications/MzAppsPickActivity;)Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lflyme/support/v7/widget/TwoStateTextView;->setTotalCount(I)V

    .line 722
    iget-object v1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {v1}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1200(Lcom/meizu/settings/applications/MzAppsPickActivity;)Lflyme/support/v7/widget/TwoStateTextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lflyme/support/v7/widget/TwoStateTextView;->setSelectedCount(I)V

    .line 723
    iget-object v1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->mFinishPickMenu:Landroid/view/MenuItem;

    if-eqz v1, :cond_88

    .line 724
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {p0}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$2600(Lcom/meizu/settings/applications/MzAppsPickActivity;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_85

    if-lez v0, :cond_84

    goto :goto_85

    :cond_84
    move v3, v6

    :cond_85
    :goto_85
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_88
    :goto_88
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4

    .line 754
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const p2, 0x7f0a004d

    if-eq p1, p2, :cond_a

    goto :goto_51

    .line 757
    :cond_a
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 758
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->mPickAppList:Ljava/util/List;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string/jumbo v0, "pick_result_extra"

    .line 759
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 760
    iget-object p2, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    const/4 v0, -0x1

    invoke-virtual {p2, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 761
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 762
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->mPickAppList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_51

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 763
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onActionItemClicked result item = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MzAppsPickActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    :cond_51
    :goto_51
    const/4 p0, 0x0

    return p0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 6

    .line 622
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    new-instance v1, Lflyme/support/v7/widget/MultiChoiceView;

    invoke-static {v0}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$2300(Lcom/meizu/settings/applications/MzAppsPickActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lflyme/support/v7/widget/MultiChoiceView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$2202(Lcom/meizu/settings/applications/MzAppsPickActivity;Lflyme/support/v7/widget/MultiChoiceView;)Lflyme/support/v7/widget/MultiChoiceView;

    .line 623
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {v0}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$2200(Lcom/meizu/settings/applications/MzAppsPickActivity;)Lflyme/support/v7/widget/MultiChoiceView;

    move-result-object v1

    invoke-virtual {v1}, Lflyme/support/v7/widget/MultiChoiceView;->getSelectAllView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/TwoStateTextView;

    invoke-static {v0, v1}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1202(Lcom/meizu/settings/applications/MzAppsPickActivity;Lflyme/support/v7/widget/TwoStateTextView;)Lflyme/support/v7/widget/TwoStateTextView;

    .line 624
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {v0}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$2200(Lcom/meizu/settings/applications/MzAppsPickActivity;)Lflyme/support/v7/widget/MultiChoiceView;

    move-result-object v0

    new-instance v1, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$3;

    invoke-direct {v1, p0, p1}, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$3;-><init>(Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;Landroid/view/ActionMode;)V

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/MultiChoiceView;->setOnCloseItemClickListener(Landroid/view/View$OnClickListener;)V

    .line 631
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {v0}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$500(Lcom/meizu/settings/applications/MzAppsPickActivity;)V

    .line 632
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {v0}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$2200(Lcom/meizu/settings/applications/MzAppsPickActivity;)Lflyme/support/v7/widget/MultiChoiceView;

    move-result-object v0

    new-instance v1, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4;

    invoke-direct {v1, p0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4;-><init>(Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;)V

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/MultiChoiceView;->setOnSelectAllItemClickListener(Landroid/view/View$OnClickListener;)V

    .line 694
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {v0}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$2200(Lcom/meizu/settings/applications/MzAppsPickActivity;)Lflyme/support/v7/widget/MultiChoiceView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 695
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-virtual {p1}, Lflyme/support/v7/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    const v0, 0x7f0e000c

    .line 696
    invoke-virtual {p1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p1, 0x7f0a004d

    .line 697
    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->mFinishPickMenu:Landroid/view/MenuItem;

    .line 698
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->mFinishPickMenu:Landroid/view/MenuItem;

    const/4 p2, 0x1

    if-eqz p1, :cond_80

    .line 699
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    .line 700
    invoke-static {v0}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$2600(Lcom/meizu/settings/applications/MzAppsPickActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {v0}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1100(Lcom/meizu/settings/applications/MzAppsPickActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_7a

    goto :goto_7c

    :cond_7a
    const/4 v0, 0x0

    goto :goto_7d

    :cond_7c
    :goto_7c
    move v0, p2

    .line 699
    :goto_7d
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 702
    :cond_80
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {p1}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1000(Lcom/meizu/settings/applications/MzAppsPickActivity;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->mPickAppList:Ljava/util/List;

    return p2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 2

    .line 772
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .registers 7

    .line 517
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {p1}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1800(Lcom/meizu/settings/applications/MzAppsPickActivity;)Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->access$1900(Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;I)Z

    move-result p1

    .line 518
    iget-object p3, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {p3}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1800(Lcom/meizu/settings/applications/MzAppsPickActivity;)Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->access$2000(Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;I)Z

    move-result p3

    .line 519
    iget-object p4, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {p4}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1800(Lcom/meizu/settings/applications/MzAppsPickActivity;)Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->getAppEntry(I)Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    move-result-object p4

    if-eqz p1, :cond_36

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p4, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p4, p4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ":1"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_3a

    .line 521
    :cond_36
    iget-object p4, p4, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p4, p4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_3a
    if-eqz p5, :cond_44

    .line 523
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->mPickAppList:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    :cond_44
    if-nez p5, :cond_52

    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->mPickAppList:Ljava/util/List;

    .line 524
    invoke-interface {v0, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_52

    .line 525
    :cond_4e
    invoke-direct {p0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->updateCountChange()V

    return-void

    .line 529
    :cond_52
    iget-object p4, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-virtual {p4}, Lcom/meizu/settings/applications/MzAppsPickActivity;->isCloneItemIncluded()Z

    move-result p4

    const/4 v0, -0x1

    if-eqz p4, :cond_9e

    iget-object p4, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-virtual {p4}, Lcom/meizu/settings/applications/MzAppsPickActivity;->isItemCanCheckAlone()Z

    move-result p4

    if-nez p4, :cond_9e

    if-eqz p1, :cond_7b

    if-nez p5, :cond_7b

    const/4 p3, 0x0

    add-int/lit8 p4, p2, -0x1

    .line 531
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 532
    iget-object p4, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {p4}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1100(Lcom/meizu/settings/applications/MzAppsPickActivity;)Landroid/widget/ListView;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result p4

    if-eqz p4, :cond_9e

    goto :goto_9f

    :cond_7b
    if-eqz p3, :cond_9e

    if-eqz p5, :cond_9e

    add-int/lit8 p3, p2, 0x1

    .line 536
    iget-object p4, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {p4}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1800(Lcom/meizu/settings/applications/MzAppsPickActivity;)Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;

    move-result-object p4

    invoke-virtual {p4}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->getCount()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 537
    iget-object p4, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {p4}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1100(Lcom/meizu/settings/applications/MzAppsPickActivity;)Landroid/widget/ListView;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result p4

    if-nez p4, :cond_9e

    goto :goto_9f

    :cond_9e
    move p3, v0

    :goto_9f
    if-eq p3, v0, :cond_ae

    .line 545
    new-instance p4, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;

    invoke-direct {p4, p0, p2, p5, p3}, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;-><init>(Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;IZI)V

    .line 590
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, p4}, Lcom/meizu/settings/applications/MzAppsPickActivity;->onRelatedItemCheckChanged(ZLcom/meizu/settings/applications/MzAppsPickActivity$MzAppsPickConfirmListener;)V

    goto :goto_ca

    .line 592
    :cond_ae
    new-instance p3, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$2;

    invoke-direct {p3, p0, p2, p5, p1}, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$2;-><init>(Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;IZZ)V

    .line 615
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {p1}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1100(Lcom/meizu/settings/applications/MzAppsPickActivity;)Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result p2

    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    .line 616
    invoke-static {p0}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1800(Lcom/meizu/settings/applications/MzAppsPickActivity;)Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->getCount()I

    move-result p0

    .line 615
    invoke-virtual {p1, p2, p0, p3}, Lcom/meizu/settings/applications/MzAppsPickActivity;->onPickedItemCountChanged(IILcom/meizu/settings/applications/MzAppsPickActivity$MzAppsPickConfirmListener;)V

    :goto_ca
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method
