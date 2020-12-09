.class final Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;
.super Landroid/os/Handler;
.source "InstantAppRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/InstantAppRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CookiePersistence"
.end annotation


# static fields
.field private static final PERSIST_COOKIE_DELAY_MILLIS:J = 0x3e8L


# instance fields
.field private final mPendingPersistCookies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/SomeArgs;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/InstantAppRegistry;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/InstantAppRegistry;Landroid/os/Looper;)V
    .registers 3

    .line 1188
    iput-object p1, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->this$0:Lcom/android/server/pm/InstantAppRegistry;

    .line 1189
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1185
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->mPendingPersistCookies:Landroid/util/SparseArray;

    .line 1190
    return-void
.end method

.method private addPendingPersistCookieLPw(ILandroid/content/pm/PackageParser$Package;[BLjava/io/File;)V
    .registers 7

    .line 1238
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->mPendingPersistCookies:Landroid/util/SparseArray;

    .line 1239
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1240
    if-nez v0, :cond_14

    .line 1241
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1242
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->mPendingPersistCookies:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1244
    :cond_14
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p1

    .line 1245
    iput-object p3, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1246
    iput-object p4, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1247
    iget-object p2, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    return-void
.end method

.method private removePendingPersistCookieLPr(Landroid/content/pm/PackageParser$Package;I)Lcom/android/internal/os/SomeArgs;
    .registers 4

    .line 1252
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->mPendingPersistCookies:Landroid/util/SparseArray;

    .line 1253
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1254
    nop

    .line 1255
    if-eqz v0, :cond_1f

    .line 1256
    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 1257
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1258
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->mPendingPersistCookies:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_20

    .line 1255
    :cond_1f
    const/4 p1, 0x0

    .line 1261
    :cond_20
    :goto_20
    return-object p1
.end method


# virtual methods
.method public cancelPendingPersistLPw(Landroid/content/pm/PackageParser$Package;I)V
    .registers 3

    .line 1228
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->removeMessages(ILjava/lang/Object;)V

    .line 1229
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->removePendingPersistCookieLPr(Landroid/content/pm/PackageParser$Package;I)Lcom/android/internal/os/SomeArgs;

    move-result-object p1

    .line 1230
    if-eqz p1, :cond_c

    .line 1231
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1233
    :cond_c
    return-void
.end method

.method public getPendingPersistCookieLPr(Landroid/content/pm/PackageParser$Package;I)[B
    .registers 4

    .line 1215
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->mPendingPersistCookies:Landroid/util/SparseArray;

    .line 1216
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArrayMap;

    .line 1217
    if-eqz p2, :cond_19

    .line 1218
    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 1219
    if-eqz p1, :cond_19

    .line 1220
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, [B

    return-object p1

    .line 1223
    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 1266
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1267
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/pm/PackageParser$Package;

    .line 1268
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->removePendingPersistCookieLPr(Landroid/content/pm/PackageParser$Package;I)Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 1269
    if-nez v1, :cond_d

    .line 1270
    return-void

    .line 1272
    :cond_d
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, [B

    .line 1273
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/io/File;

    .line 1274
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1275
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->this$0:Lcom/android/server/pm/InstantAppRegistry;

    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v1, v2, p1, v3, v0}, Lcom/android/server/pm/InstantAppRegistry;->access$200(Lcom/android/server/pm/InstantAppRegistry;[BLjava/lang/String;Ljava/io/File;I)V

    .line 1276
    return-void
.end method

.method public schedulePersistLPw(ILandroid/content/pm/PackageParser$Package;[B)V
    .registers 7

    .line 1198
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    .line 1199
    invoke-static {v1}, Landroid/util/PackageUtils;->computeSignaturesSha256Digest([Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v1

    .line 1198
    invoke-static {v0, v1, p1}, Lcom/android/server/pm/InstantAppRegistry;->access$000(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 1200
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v1}, Landroid/content/pm/PackageParser$SigningDetails;->hasSignatures()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 1201
    const-string v1, "InstantAppRegistry"

    const-string v2, "Parsed Instant App contains no valid signatures!"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    :cond_1d
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/android/server/pm/InstantAppRegistry;->access$100(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 1204
    if-eqz v1, :cond_2e

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 1205
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1207
    :cond_2e
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->cancelPendingPersistLPw(Landroid/content/pm/PackageParser$Package;I)V

    .line 1208
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->addPendingPersistCookieLPw(ILandroid/content/pm/PackageParser$Package;[BLjava/io/File;)V

    .line 1209
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 p2, 0x3e8

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1211
    return-void
.end method
