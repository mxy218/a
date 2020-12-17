.class Lcom/meizu/settings/display/aod/AODStyleActivity$ClockStyleAdapter;
.super Landroid/widget/BaseAdapter;
.source "AODStyleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/display/aod/AODStyleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClockStyleAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/display/aod/AODStyleActivity;


# direct methods
.method constructor <init>(Lcom/meizu/settings/display/aod/AODStyleActivity;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/meizu/settings/display/aod/AODStyleActivity$ClockStyleAdapter;->this$0:Lcom/meizu/settings/display/aod/AODStyleActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 1

    .line 61
    sget-object p0, Lcom/meizu/settings/display/aod/Constants;->mImgs:[Ljava/lang/Integer;

    array-length p0, p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 2

    .line 65
    sget-object p0, Lcom/meizu/settings/display/aod/Constants;->mImgs:[Ljava/lang/Integer;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getItemId(I)J
    .registers 2

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    const/4 v0, 0x0

    if-nez p2, :cond_1b

    .line 76
    iget-object p2, p0, Lcom/meizu/settings/display/aod/AODStyleActivity$ClockStyleAdapter;->this$0:Lcom/meizu/settings/display/aod/AODStyleActivity;

    invoke-static {p2}, Lcom/meizu/settings/display/aod/AODStyleActivity;->access$000(Lcom/meizu/settings/display/aod/AODStyleActivity;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d0325

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 77
    new-instance p3, Lcom/meizu/settings/display/aod/AODStyleActivity$ViewHolder;

    iget-object v1, p0, Lcom/meizu/settings/display/aod/AODStyleActivity$ClockStyleAdapter;->this$0:Lcom/meizu/settings/display/aod/AODStyleActivity;

    invoke-direct {p3, v1, p2, p1}, Lcom/meizu/settings/display/aod/AODStyleActivity$ViewHolder;-><init>(Lcom/meizu/settings/display/aod/AODStyleActivity;Landroid/view/View;I)V

    .line 78
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_21

    .line 80
    :cond_1b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/meizu/settings/display/aod/AODStyleActivity$ViewHolder;

    .line 82
    :goto_21
    iget-object v1, p3, Lcom/meizu/settings/display/aod/AODStyleActivity$ViewHolder;->mStyleImage:Landroid/widget/ImageView;

    sget-object v2, Lcom/meizu/settings/display/aod/Constants;->mImgs:[Ljava/lang/Integer;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    iget-object v1, p3, Lcom/meizu/settings/display/aod/AODStyleActivity$ViewHolder;->mStyleText:Landroid/widget/TextView;

    sget-object v2, Lcom/meizu/settings/display/aod/Constants;->mTexts:[Ljava/lang/Integer;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 85
    iget-object v1, p0, Lcom/meizu/settings/display/aod/AODStyleActivity$ClockStyleAdapter;->this$0:Lcom/meizu/settings/display/aod/AODStyleActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "aod_style"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, p1, :cond_4f

    .line 87
    iget-object p1, p3, Lcom/meizu/settings/display/aod/AODStyleActivity$ViewHolder;->mStyleState:Landroid/widget/CheckBox;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 90
    :cond_4f
    new-instance p1, Lcom/meizu/settings/display/aod/AODStyleActivity$ClockStyleAdapter$1;

    invoke-direct {p1, p0}, Lcom/meizu/settings/display/aod/AODStyleActivity$ClockStyleAdapter$1;-><init>(Lcom/meizu/settings/display/aod/AODStyleActivity$ClockStyleAdapter;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
