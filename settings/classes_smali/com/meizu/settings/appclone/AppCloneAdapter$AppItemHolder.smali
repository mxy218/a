.class Lcom/meizu/settings/appclone/AppCloneAdapter$AppItemHolder;
.super Ljava/lang/Object;
.source "AppCloneAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/appclone/AppCloneAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppItemHolder"
.end annotation


# instance fields
.field public icon:Landroid/widget/ImageView;

.field public info:Lcom/meizu/settings/appclone/AppCloneBaseInfo;

.field public switcher:Lcom/meizu/common/widget/Switch;

.field public title:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
