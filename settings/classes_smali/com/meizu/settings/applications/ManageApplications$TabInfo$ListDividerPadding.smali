.class Lcom/meizu/settings/applications/ManageApplications$TabInfo$ListDividerPadding;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/ListView$DividerPadding;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/ManageApplications$TabInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListDividerPadding"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/applications/ManageApplications$TabInfo;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/ManageApplications$TabInfo;)V
    .registers 2

    .line 412
    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo$ListDividerPadding;->this$0:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDividerPadding(I)[I
    .registers 6

    .line 417
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo$ListDividerPadding;->this$0:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget-object v0, v0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0, p1}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->getItemViewType(I)I

    move-result v0

    .line 418
    iget-object v1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo$ListDividerPadding;->this$0:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget-object v1, v1, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;

    const/4 v2, 0x1

    add-int/2addr p1, v2

    .line 419
    invoke-virtual {v1}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->getItemViewType(I)I

    move-result p1

    const/4 v1, 0x2

    if-ne v0, v2, :cond_4f

    if-nez p1, :cond_21

    goto :goto_4f

    :cond_21
    const p1, 0x7f0701c0

    const v0, 0x7f0701c4

    .line 430
    iget-object v3, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo$ListDividerPadding;->this$0:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget-object v3, v3, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/meizu/settings/applications/ManageApplications;

    invoke-virtual {v3}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 431
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo$ListDividerPadding;->this$0:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/meizu/settings/applications/ManageApplications;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    new-array v0, v1, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    aput p0, v0, v2

    return-object v0

    :cond_4f
    :goto_4f
    new-array p0, v1, [I

    .line 422
    fill-array-data p0, :array_56

    return-object p0

    nop

    :array_56
    .array-data 4
        0x186a0
        0x186a0
    .end array-data
.end method
