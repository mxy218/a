.class Lflyme/support/v7/app/FlymeAlertController$ListItemCenterAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FlymeAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/app/FlymeAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListItemCenterAdapter"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field private resourceId:I

.field strings:[Ljava/lang/CharSequence;

.field textColor:Landroid/content/res/ColorStateList;

.field textColors:[Landroid/content/res/ColorStateList;

.field private textViewResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V
    .registers 5

    .line 894
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 895
    iput-object p1, p0, Lflyme/support/v7/app/FlymeAlertController$ListItemCenterAdapter;->context:Landroid/content/Context;

    .line 896
    iput p2, p0, Lflyme/support/v7/app/FlymeAlertController$ListItemCenterAdapter;->resourceId:I

    .line 897
    iput p3, p0, Lflyme/support/v7/app/FlymeAlertController$ListItemCenterAdapter;->textViewResourceId:I

    .line 898
    iput-object p4, p0, Lflyme/support/v7/app/FlymeAlertController$ListItemCenterAdapter;->strings:[Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V
    .registers 6

    .line 876
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 877
    iput-object p1, p0, Lflyme/support/v7/app/FlymeAlertController$ListItemCenterAdapter;->context:Landroid/content/Context;

    .line 878
    iput p2, p0, Lflyme/support/v7/app/FlymeAlertController$ListItemCenterAdapter;->resourceId:I

    .line 879
    iput p3, p0, Lflyme/support/v7/app/FlymeAlertController$ListItemCenterAdapter;->textViewResourceId:I

    .line 880
    iput-object p4, p0, Lflyme/support/v7/app/FlymeAlertController$ListItemCenterAdapter;->strings:[Ljava/lang/CharSequence;

    .line 881
    iput-object p5, p0, Lflyme/support/v7/app/FlymeAlertController$ListItemCenterAdapter;->textColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II[Ljava/lang/CharSequence;[Landroid/content/res/ColorStateList;)V
    .registers 6

    .line 885
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 886
    iput-object p1, p0, Lflyme/support/v7/app/FlymeAlertController$ListItemCenterAdapter;->context:Landroid/content/Context;

    .line 887
    iput p2, p0, Lflyme/support/v7/app/FlymeAlertController$ListItemCenterAdapter;->resourceId:I

    .line 888
    iput p3, p0, Lflyme/support/v7/app/FlymeAlertController$ListItemCenterAdapter;->textViewResourceId:I

    .line 889
    iput-object p4, p0, Lflyme/support/v7/app/FlymeAlertController$ListItemCenterAdapter;->strings:[Ljava/lang/CharSequence;

    .line 890
    iput-object p5, p0, Lflyme/support/v7/app/FlymeAlertController$ListItemCenterAdapter;->textColors:[Landroid/content/res/ColorStateList;

    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .registers 2

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    if-nez p2, :cond_26

    .line 906
    iget-object p2, p0, Lflyme/support/v7/app/FlymeAlertController$ListItemCenterAdapter;->context:Landroid/content/Context;

    const-string p3, "layout_inflater"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 907
    iget p3, p0, Lflyme/support/v7/app/FlymeAlertController$ListItemCenterAdapter;->resourceId:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 908
    new-instance p3, Lflyme/support/v7/app/FlymeAlertController$ViewHolder;

    invoke-direct {p3, v0}, Lflyme/support/v7/app/FlymeAlertController$ViewHolder;-><init>(Lflyme/support/v7/app/FlymeAlertController$1;)V

    .line 909
    iget v0, p0, Lflyme/support/v7/app/FlymeAlertController$ListItemCenterAdapter;->textViewResourceId:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lflyme/support/v7/app/FlymeAlertController$ViewHolder;->item:Landroid/widget/TextView;

    .line 910
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2c

    .line 912
    :cond_26
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lflyme/support/v7/app/FlymeAlertController$ViewHolder;

    .line 914
    :goto_2c
    iget-object v0, p3, Lflyme/support/v7/app/FlymeAlertController$ViewHolder;->item:Landroid/widget/TextView;

    iget-object v1, p0, Lflyme/support/v7/app/FlymeAlertController$ListItemCenterAdapter;->strings:[Ljava/lang/CharSequence;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 915
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController$ListItemCenterAdapter;->textColors:[Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_41

    .line 916
    iget-object p0, p3, Lflyme/support/v7/app/FlymeAlertController$ViewHolder;->item:Landroid/widget/TextView;

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_4a

    .line 917
    :cond_41
    iget-object p0, p0, Lflyme/support/v7/app/FlymeAlertController$ListItemCenterAdapter;->textColor:Landroid/content/res/ColorStateList;

    if-eqz p0, :cond_4a

    .line 918
    iget-object p1, p3, Lflyme/support/v7/app/FlymeAlertController$ViewHolder;->item:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_4a
    :goto_4a
    return-object p2
.end method

.method public hasStableIds()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
