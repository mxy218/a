.class Lcom/android/server/pm/OtaDexoptService$1;
.super Lcom/android/server/pm/Installer;
.source "OtaDexoptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/OtaDexoptService;->generatePackageDexopts(Landroid/content/pm/PackageParser$Package;I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/OtaDexoptService;

.field final synthetic val$commands:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/server/pm/OtaDexoptService;Landroid/content/Context;ZLjava/util/List;)V
    .registers 5

    .line 269
    iput-object p1, p0, Lcom/android/server/pm/OtaDexoptService$1;->this$0:Lcom/android/server/pm/OtaDexoptService;

    iput-object p4, p0, Lcom/android/server/pm/OtaDexoptService$1;->val$commands:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/Installer;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method private encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .registers 7

    .line 316
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 318
    if-nez p2, :cond_d

    .line 319
    const/16 p2, 0x21

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 320
    return-void

    .line 323
    :cond_d
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 324
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2b

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v3, :cond_2b

    const-string v0, "!"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 328
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    return-void

    .line 325
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid argument while executing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 285
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    const-string v2, "10 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    const-string v2, "dexopt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    move-object v2, p1

    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 293
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 294
    move-object v2, p3

    invoke-direct {p0, v1, p3}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 295
    move-object v2, p4

    invoke-direct {p0, v1, p4}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 296
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 297
    move-object v2, p6

    invoke-direct {p0, v1, p6}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 298
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 299
    move-object v2, p8

    invoke-direct {p0, v1, p8}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 300
    move-object v2, p9

    invoke-direct {p0, v1, p9}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 301
    move-object v2, p10

    invoke-direct {p0, v1, p10}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 302
    move-object v2, p11

    invoke-direct {p0, v1, p11}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 303
    invoke-static {p12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 304
    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 305
    move-object/from16 v2, p14

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 306
    move-object/from16 v2, p15

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 307
    move-object/from16 v2, p16

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 309
    iget-object v0, v0, Lcom/android/server/pm/OtaDexoptService$1;->val$commands:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    return-void
.end method
