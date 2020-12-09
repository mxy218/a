.class Lcom/android/server/pm/InstantAppResolver$1;
.super Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;
.source "InstantAppResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/InstantAppResolver;->doInstantAppResolutionPhaseTwo(Landroid/content/Context;Lcom/android/server/pm/InstantAppResolverConnection;Landroid/content/pm/InstantAppRequest;Landroid/content/pm/ActivityInfo;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$instantAppInstaller:Landroid/content/pm/ActivityInfo;

.field final synthetic val$origIntent:Landroid/content/Intent;

.field final synthetic val$requestObj:Landroid/content/pm/InstantAppRequest;

.field final synthetic val$sanitizedIntent:Landroid/content/Intent;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/content/pm/InstantAppRequest;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/Context;)V
    .registers 7

    .line 185
    iput-object p1, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$origIntent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$requestObj:Landroid/content/pm/InstantAppRequest;

    iput-object p3, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$token:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$sanitizedIntent:Landroid/content/Intent;

    iput-object p5, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$instantAppInstaller:Landroid/content/pm/ActivityInfo;

    iput-object p6, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;-><init>()V

    return-void
.end method


# virtual methods
.method onPhaseTwoResolved(Ljava/util/List;J)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppResolveInfo;",
            ">;J)V"
        }
    .end annotation

    .line 190
    const/4 v0, 0x0

    if-eqz p1, :cond_25

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_25

    .line 191
    iget-object v3, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$origIntent:Landroid/content/Intent;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 194
    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$requestObj:Landroid/content/pm/InstantAppRequest;

    iget-object v7, v1, Landroid/content/pm/InstantAppRequest;->digest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    iget-object v8, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$token:Ljava/lang/String;

    .line 192
    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/InstantAppResolver;->access$000(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;)Landroid/content/pm/AuxiliaryResolveInfo;

    move-result-object p1

    .line 196
    if-eqz p1, :cond_22

    .line 197
    iget-object p1, p1, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    move-object v0, p1

    goto :goto_23

    .line 199
    :cond_22
    nop

    .line 201
    :goto_23
    move-object v3, v0

    goto :goto_26

    .line 202
    :cond_25
    move-object v3, v0

    .line 204
    :goto_26
    iget-object p1, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$requestObj:Landroid/content/pm/InstantAppRequest;

    iget-object v1, p1, Landroid/content/pm/InstantAppRequest;->origIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$sanitizedIntent:Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$requestObj:Landroid/content/pm/InstantAppRequest;

    iget-object v4, p1, Landroid/content/pm/InstantAppRequest;->callingPackage:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$requestObj:Landroid/content/pm/InstantAppRequest;

    iget-object v5, p1, Landroid/content/pm/InstantAppRequest;->verificationBundle:Landroid/os/Bundle;

    iget-object p1, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$requestObj:Landroid/content/pm/InstantAppRequest;

    iget-object v6, p1, Landroid/content/pm/InstantAppRequest;->resolvedType:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$requestObj:Landroid/content/pm/InstantAppRequest;

    iget v7, p1, Landroid/content/pm/InstantAppRequest;->userId:I

    iget-object p1, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$requestObj:Landroid/content/pm/InstantAppRequest;

    iget-object p1, p1, Landroid/content/pm/InstantAppRequest;->responseObj:Landroid/content/pm/AuxiliaryResolveInfo;

    iget-object v8, p1, Landroid/content/pm/AuxiliaryResolveInfo;->installFailureActivity:Landroid/content/ComponentName;

    iget-object v9, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$token:Ljava/lang/String;

    const/4 v10, 0x0

    iget-object p1, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$requestObj:Landroid/content/pm/InstantAppRequest;

    iget-object p1, p1, Landroid/content/pm/InstantAppRequest;->responseObj:Landroid/content/pm/AuxiliaryResolveInfo;

    iget-object v11, p1, Landroid/content/pm/AuxiliaryResolveInfo;->filters:Ljava/util/List;

    invoke-static/range {v1 .. v11}, Lcom/android/server/pm/InstantAppResolver;->buildEphemeralInstallerIntent(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Landroid/content/Intent;

    move-result-object p1

    .line 216
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$instantAppInstaller:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$instantAppInstaller:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 219
    const/16 v0, 0x384

    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$token:Ljava/lang/String;

    .line 220
    iget-object v2, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$requestObj:Landroid/content/pm/InstantAppRequest;

    iget-object v2, v2, Landroid/content/pm/InstantAppRequest;->responseObj:Landroid/content/pm/AuxiliaryResolveInfo;

    iget-object v2, v2, Landroid/content/pm/AuxiliaryResolveInfo;->filters:Ljava/util/List;

    if-eqz v2, :cond_6d

    const/4 v2, 0x0

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x1

    .line 219
    :goto_6e
    invoke-static {v0, p2, p3, v1, v2}, Lcom/android/server/pm/InstantAppResolver;->access$100(IJLjava/lang/String;I)V

    .line 222
    iget-object p2, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 223
    return-void
.end method
