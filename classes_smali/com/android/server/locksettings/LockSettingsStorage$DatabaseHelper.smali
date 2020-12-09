.class Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LockSettingsStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "locksettings.db"

.field private static final DATABASE_VERSION:I = 0x2

.field private static final IDLE_CONNECTION_TIMEOUT_MS:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "LockSettingsDB"


# instance fields
.field private mCallback:Lcom/android/server/locksettings/LockSettingsStorage$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 758
    const-string v0, "locksettings.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 759
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 761
    const-wide/16 v0, 0x7530

    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->setIdleConnectionTimeout(J)V

    .line 762
    return-void
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 769
    const-string v0, "CREATE TABLE locksettings (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,user INTEGER,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 775
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 779
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 780
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->mCallback:Lcom/android/server/locksettings/LockSettingsStorage$Callback;

    if-eqz v0, :cond_a

    .line 781
    invoke-interface {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Callback;->initialize(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 783
    :cond_a
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .line 787
    nop

    .line 788
    const/4 p1, 0x2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_6

    .line 790
    move p2, p1

    .line 793
    :cond_6
    if-eq p2, p1, :cond_f

    .line 794
    const-string p1, "LockSettingsDB"

    const-string p2, "Failed to upgrade database!"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_f
    return-void
.end method

.method public setCallback(Lcom/android/server/locksettings/LockSettingsStorage$Callback;)V
    .registers 2

    .line 765
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->mCallback:Lcom/android/server/locksettings/LockSettingsStorage$Callback;

    .line 766
    return-void
.end method