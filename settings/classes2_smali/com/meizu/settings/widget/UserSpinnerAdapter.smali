.class public Lcom/meizu/settings/widget/UserSpinnerAdapter;
.super Ljava/lang/Object;
.source "UserSpinnerAdapter.java"

# interfaces
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/widget/UserSpinnerAdapter$UserDetails;
    }
.end annotation


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/widget/UserSpinnerAdapter$UserDetails;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/widget/UserSpinnerAdapter$UserDetails;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_12

    .line 76
    iput-object p2, p0, Lcom/meizu/settings/widget/UserSpinnerAdapter;->data:Ljava/util/ArrayList;

    const-string p2, "layout_inflater"

    .line 77
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/meizu/settings/widget/UserSpinnerAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void

    .line 74
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A list of user details must be provided"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createUser(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 98
    iget-object p0, p0, Lcom/meizu/settings/widget/UserSpinnerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0399

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/meizu/settings/widget/UserSpinnerAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    if-eqz p2, :cond_3

    goto :goto_7

    .line 89
    :cond_3
    invoke-direct {p0, p3}, Lcom/meizu/settings/widget/UserSpinnerAdapter;->createUser(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 91
    :goto_7
    iget-object p0, p0, Lcom/meizu/settings/widget/UserSpinnerAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/widget/UserSpinnerAdapter$UserDetails;

    const p1, 0x1020006

    .line 92
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/meizu/settings/widget/UserSpinnerAdapter$UserDetails;->access$100(Lcom/meizu/settings/widget/UserSpinnerAdapter$UserDetails;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x1020016

    .line 93
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p0}, Lcom/meizu/settings/widget/UserSpinnerAdapter$UserDetails;->access$200(Lcom/meizu/settings/widget/UserSpinnerAdapter$UserDetails;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public getItem(I)Lcom/meizu/settings/widget/UserSpinnerAdapter$UserDetails;
    .registers 2

    .line 118
    iget-object p0, p0, Lcom/meizu/settings/widget/UserSpinnerAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/widget/UserSpinnerAdapter$UserDetails;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 43
    invoke-virtual {p0, p1}, Lcom/meizu/settings/widget/UserSpinnerAdapter;->getItem(I)Lcom/meizu/settings/widget/UserSpinnerAdapter$UserDetails;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .registers 2

    .line 123
    iget-object p0, p0, Lcom/meizu/settings/widget/UserSpinnerAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/widget/UserSpinnerAdapter$UserDetails;

    invoke-static {p0}, Lcom/meizu/settings/widget/UserSpinnerAdapter$UserDetails;->access$000(Lcom/meizu/settings/widget/UserSpinnerAdapter$UserDetails;)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public getItemViewType(I)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getUserHandle(I)Landroid/os/UserHandle;
    .registers 3

    if-ltz p1, :cond_18

    .line 81
    iget-object v0, p0, Lcom/meizu/settings/widget/UserSpinnerAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_18

    .line 84
    :cond_b
    iget-object p0, p0, Lcom/meizu/settings/widget/UserSpinnerAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/widget/UserSpinnerAdapter$UserDetails;

    invoke-static {p0}, Lcom/meizu/settings/widget/UserSpinnerAdapter$UserDetails;->access$000(Lcom/meizu/settings/widget/UserSpinnerAdapter$UserDetails;)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0

    :cond_18
    :goto_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 133
    invoke-virtual {p0, p1, p2, p3}, Lcom/meizu/settings/widget/UserSpinnerAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

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

    const/4 p0, 0x0

    return p0
.end method

.method public isEmpty()Z
    .registers 1

    .line 148
    iget-object p0, p0, Lcom/meizu/settings/widget/UserSpinnerAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 2

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 2

    return-void
.end method
