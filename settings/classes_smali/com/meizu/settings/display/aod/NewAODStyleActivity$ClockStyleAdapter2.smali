.class Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2;
.super Landroid/widget/BaseAdapter;
.source "NewAODStyleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/display/aod/NewAODStyleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClockStyleAdapter2"
.end annotation


# instance fields
.field private mPageViewIndex:I

.field final synthetic this$0:Lcom/meizu/settings/display/aod/NewAODStyleActivity;


# direct methods
.method constructor <init>(Lcom/meizu/settings/display/aod/NewAODStyleActivity;I)V
    .registers 3

    .line 135
    iput-object p1, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2;->this$0:Lcom/meizu/settings/display/aod/NewAODStyleActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 136
    iput p2, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2;->mPageViewIndex:I

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2;)I
    .registers 1

    .line 132
    iget p0, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2;->mPageViewIndex:I

    return p0
.end method


# virtual methods
.method public getCount()I
    .registers 1

    const/16 p0, 0x9

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .line 144
    sget-object v0, Lcom/meizu/settings/display/aod/Constants;->mPreviewIcons:[Ljava/lang/Integer;

    iget p0, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2;->mPageViewIndex:I

    mul-int/lit8 p0, p0, 0x9

    add-int/2addr p0, p1

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getItemId(I)J
    .registers 2

    .line 148
    iget p0, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2;->mPageViewIndex:I

    mul-int/lit8 p0, p0, 0x9

    add-int/2addr p0, p1

    int-to-long p0, p0

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    const/4 v0, 0x0

    if-nez p2, :cond_1b

    .line 155
    iget-object p2, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2;->this$0:Lcom/meizu/settings/display/aod/NewAODStyleActivity;

    invoke-static {p2}, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->access$000(Lcom/meizu/settings/display/aod/NewAODStyleActivity;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d0326

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 156
    new-instance p3, Lcom/meizu/settings/display/aod/NewAODStyleActivity$ViewHolder;

    iget-object v1, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2;->this$0:Lcom/meizu/settings/display/aod/NewAODStyleActivity;

    invoke-direct {p3, v1, p2}, Lcom/meizu/settings/display/aod/NewAODStyleActivity$ViewHolder;-><init>(Lcom/meizu/settings/display/aod/NewAODStyleActivity;Landroid/view/View;)V

    .line 157
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_21

    .line 159
    :cond_1b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/meizu/settings/display/aod/NewAODStyleActivity$ViewHolder;

    .line 161
    :goto_21
    iget v1, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2;->mPageViewIndex:I

    mul-int/lit8 v1, v1, 0x9

    add-int/2addr v1, p1

    .line 162
    sget-object v2, Lcom/meizu/settings/display/aod/Constants;->mPreviewIcons:[Ljava/lang/Integer;

    array-length v3, v2

    if-ge v1, v3, :cond_5d

    .line 163
    iget-object p3, p3, Lcom/meizu/settings/display/aod/NewAODStyleActivity$ViewHolder;->mStyleImage:Landroid/widget/ImageView;

    aget-object v0, v2, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    iget-object p3, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2;->this$0:Lcom/meizu/settings/display/aod/NewAODStyleActivity;

    invoke-static {p3}, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->access$100(Lcom/meizu/settings/display/aod/NewAODStyleActivity;)I

    move-result p3

    if-ne p3, v1, :cond_56

    const p3, 0x7f080140

    .line 165
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 166
    rem-int/lit8 v1, v1, 0x9

    if-nez v1, :cond_50

    iget-object p3, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2;->this$0:Lcom/meizu/settings/display/aod/NewAODStyleActivity;

    invoke-static {p3}, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->access$200(Lcom/meizu/settings/display/aod/NewAODStyleActivity;)Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_62

    .line 167
    :cond_50
    iget-object p3, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2;->this$0:Lcom/meizu/settings/display/aod/NewAODStyleActivity;

    invoke-static {p3, p2}, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->access$202(Lcom/meizu/settings/display/aod/NewAODStyleActivity;Landroid/view/View;)Landroid/view/View;

    goto :goto_62

    :cond_56
    const p3, 0x7f08013f

    .line 170
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_62

    .line 173
    :cond_5d
    iget-object p3, p3, Lcom/meizu/settings/display/aod/NewAODStyleActivity$ViewHolder;->mStyleImage:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 177
    :cond_62
    :goto_62
    new-instance p3, Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2$1;

    invoke-direct {p3, p0, p1}, Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2$1;-><init>(Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
