.class Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/AppCompatSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownAdapter"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/SpinnerAdapter;

.field private mListAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V
    .registers 4
    .param p1  # Landroid/widget/SpinnerAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2  # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 607
    instance-of v0, p1, Landroid/widget/ListAdapter;

    if-eqz v0, :cond_e

    .line 608
    move-object v0, p1

    check-cast v0, Landroid/widget/ListAdapter;

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    :cond_e
    if-eqz p2, :cond_35

    .line 612
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p0, v0, :cond_26

    instance-of p0, p1, Landroid/widget/ThemedSpinnerAdapter;

    if-eqz p0, :cond_26

    .line 614
    check-cast p1, Landroid/widget/ThemedSpinnerAdapter;

    .line 616
    invoke-interface {p1}, Landroid/widget/ThemedSpinnerAdapter;->getDropDownViewTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    if-eq p0, p2, :cond_35

    .line 617
    invoke-interface {p1, p2}, Landroid/widget/ThemedSpinnerAdapter;->setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V

    goto :goto_35

    .line 619
    :cond_26
    instance-of p0, p1, Landroid/support/v7/widget/ThemedSpinnerAdapter;

    if-eqz p0, :cond_35

    .line 620
    check-cast p1, Landroid/support/v7/widget/ThemedSpinnerAdapter;

    .line 621
    invoke-interface {p1}, Landroid/support/v7/widget/ThemedSpinnerAdapter;->getDropDownViewTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    if-nez p0, :cond_35

    .line 622
    invoke-interface {p1, p2}, Landroid/support/v7/widget/ThemedSpinnerAdapter;->setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V

    :cond_35
    :goto_35
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 1

    .line 679
    iget-object p0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    if-eqz p0, :cond_9

    .line 681
    invoke-interface {p0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x1

    return p0
.end method

.method public getCount()I
    .registers 1

    .line 630
    iget-object p0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {p0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result p0

    :goto_a
    return p0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 650
    iget-object p0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    .line 651
    :cond_6
    invoke-interface {p0, p1, p2, p3}, Landroid/widget/SpinnerAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    :goto_a
    return-object p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 2

    .line 635
    iget-object p0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {p0, p1}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    :goto_a
    return-object p0
.end method

.method public getItemId(I)J
    .registers 2

    .line 640
    iget-object p0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez p0, :cond_7

    const-wide/16 p0, -0x1

    goto :goto_b

    :cond_7
    invoke-interface {p0, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide p0

    :goto_b
    return-wide p0
.end method

.method public getItemViewType(I)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 645
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getViewTypeCount()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public hasStableIds()Z
    .registers 1

    .line 656
    iget-object p0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isEmpty()Z
    .registers 1

    .line 713
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->getCount()I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isEnabled(I)Z
    .registers 2

    .line 693
    iget-object p0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    if-eqz p0, :cond_9

    .line 695
    invoke-interface {p0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x1

    return p0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 2

    .line 661
    iget-object p0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz p0, :cond_7

    .line 662
    invoke-interface {p0, p1}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_7
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 2

    .line 668
    iget-object p0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz p0, :cond_7

    .line 669
    invoke-interface {p0, p1}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_7
    return-void
.end method
