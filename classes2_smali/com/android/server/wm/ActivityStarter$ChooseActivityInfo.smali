.class Lcom/android/server/wm/ActivityStarter$ChooseActivityInfo;
.super Ljava/lang/Object;
.source "ActivityStarter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityStarter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChooseActivityInfo"
.end annotation


# instance fields
.field aInfo:Landroid/content/pm/ActivityInfo;

.field intent:Landroid/content/Intent;

.field isOk:Z

.field rInfo:Landroid/content/pm/ResolveInfo;

.field resolvedType:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)V
    .registers 6
    .param p1, "_it"  # Landroid/content/Intent;
    .param p2, "_rInfo"  # Landroid/content/pm/ResolveInfo;
    .param p3, "_aInfo"  # Landroid/content/pm/ActivityInfo;
    .param p4, "_rType"  # Ljava/lang/String;

    .line 3409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter$ChooseActivityInfo;->isOk:Z

    .line 3404
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$ChooseActivityInfo;->intent:Landroid/content/Intent;

    .line 3405
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$ChooseActivityInfo;->rInfo:Landroid/content/pm/ResolveInfo;

    .line 3406
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$ChooseActivityInfo;->aInfo:Landroid/content/pm/ActivityInfo;

    .line 3407
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$ChooseActivityInfo;->resolvedType:Ljava/lang/String;

    .line 3410
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$ChooseActivityInfo;->intent:Landroid/content/Intent;

    .line 3411
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0, p2}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$ChooseActivityInfo;->rInfo:Landroid/content/pm/ResolveInfo;

    .line 3412
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, p3}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$ChooseActivityInfo;->aInfo:Landroid/content/pm/ActivityInfo;

    .line 3413
    iput-object p4, p0, Lcom/android/server/wm/ActivityStarter$ChooseActivityInfo;->resolvedType:Ljava/lang/String;

    .line 3414
    return-void
.end method
