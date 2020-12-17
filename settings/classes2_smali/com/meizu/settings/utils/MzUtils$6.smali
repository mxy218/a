.class Lcom/meizu/settings/utils/MzUtils$6;
.super Ljava/lang/Object;
.source "MzUtils.java"

# interfaces
.implements Landroid/widget/ListView$DividerPadding;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/utils/MzUtils;->getListViewDividerPaddingWithIcon(Landroid/content/Context;[IZ)Landroid/widget/ListView$DividerPadding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$paddingArray:[I


# direct methods
.method constructor <init>([I)V
    .registers 2

    .line 654
    iput-object p1, p0, Lcom/meizu/settings/utils/MzUtils$6;->val$paddingArray:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDividerPadding(I)[I
    .registers 2

    .line 658
    iget-object p0, p0, Lcom/meizu/settings/utils/MzUtils$6;->val$paddingArray:[I

    return-object p0
.end method
