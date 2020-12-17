.class public Lcom/meizu/server/AccessControlService$AppInfo;
.super Ljava/lang/Object;
.source "AccessControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/server/AccessControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInfo"
.end annotation


# instance fields
.field public m_bUnlocked:Z

.field public m_szPkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "szPkg"  # Ljava/lang/String;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/meizu/server/AccessControlService$AppInfo;->m_szPkgName:Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/server/AccessControlService$AppInfo;->m_bUnlocked:Z

    .line 83
    return-void
.end method
