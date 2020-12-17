.class Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings$ListDividerPadding;
.super Ljava/lang/Object;
.source "DndAppNotificationSettings.java"

# interfaces
.implements Landroid/widget/ListView$DividerPadding;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListDividerPadding"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings$ListDividerPadding;->this$0:Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDividerPadding(I)[I
    .registers 6

    .line 106
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings$ListDividerPadding;->this$0:Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;

    invoke-static {v0}, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;->access$200(Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;)Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;->getItemViewType(I)I

    move-result v0

    .line 107
    iget-object v1, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings$ListDividerPadding;->this$0:Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;

    invoke-static {v1}, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;->access$200(Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;)Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;

    move-result-object v1

    const/4 v2, 0x1

    add-int/2addr p1, v2

    iget-object v3, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings$ListDividerPadding;->this$0:Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;

    .line 109
    invoke-static {v3}, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;->access$200(Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;)Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;->getCount()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 108
    invoke-virtual {v1, p1}, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;->getItemViewType(I)I

    move-result p1

    const/4 v1, 0x2

    if-ne v0, v2, :cond_4d

    if-ne p1, v1, :cond_2b

    goto :goto_4d

    :cond_2b
    const p1, 0x7f0701c0

    const v0, 0x7f0701c4

    .line 120
    iget-object v3, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings$ListDividerPadding;->this$0:Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;

    invoke-virtual {v3}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 121
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings$ListDividerPadding;->this$0:Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    new-array v0, v1, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    aput p0, v0, v2

    return-object v0

    :cond_4d
    :goto_4d
    new-array p0, v1, [I

    .line 112
    fill-array-data p0, :array_54

    return-object p0

    nop

    :array_54
    .array-data 4
        0x186a0
        0x186a0
    .end array-data
.end method
