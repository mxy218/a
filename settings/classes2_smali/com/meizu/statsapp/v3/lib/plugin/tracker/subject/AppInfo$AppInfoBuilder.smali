.class public Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo$AppInfoBuilder;
.super Ljava/lang/Object;
.source "AppInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInfoBuilder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo$AppInfoBuilder;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo$AppInfoBuilder;)Landroid/content/Context;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo$AppInfoBuilder;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo;
    .registers 3

    .line 51
    new-instance v0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo;-><init>(Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo$AppInfoBuilder;Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo$1;)V

    return-object v0
.end method

.method public context(Landroid/content/Context;)Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo$AppInfoBuilder;
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo$AppInfoBuilder;->context:Landroid/content/Context;

    return-object p0
.end method
