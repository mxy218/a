.class Lcom/android/server/am/AppNotRespondingDialog$Data;
.super Ljava/lang/Object;
.source "AppNotRespondingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppNotRespondingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Data"
.end annotation


# instance fields
.field final aInfo:Landroid/content/pm/ApplicationInfo;

.field final aboveSystem:Z

.field final proc:Lcom/android/server/am/ProcessRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ApplicationInfo;Z)V
    .registers 4

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 190
    iput-object p2, p0, Lcom/android/server/am/AppNotRespondingDialog$Data;->aInfo:Landroid/content/pm/ApplicationInfo;

    .line 191
    iput-boolean p3, p0, Lcom/android/server/am/AppNotRespondingDialog$Data;->aboveSystem:Z

    .line 192
    return-void
.end method
