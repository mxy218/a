.class Lcom/meizu/server/FlymePermissionService$CtaInfo;
.super Ljava/lang/Object;
.source "FlymePermissionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/server/FlymePermissionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CtaInfo"
.end annotation


# instance fields
.field volatile isShow:Z

.field volatile lastShowTime:J


# direct methods
.method constructor <init>()V
    .registers 1

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
