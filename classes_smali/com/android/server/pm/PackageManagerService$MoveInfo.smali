.class Lcom/android/server/pm/PackageManagerService$MoveInfo;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MoveInfo"
.end annotation


# instance fields
.field final appId:I

.field final dataAppName:Ljava/lang/String;

.field final fromUuid:Ljava/lang/String;

.field final moveId:I

.field final packageName:Ljava/lang/String;

.field final seinfo:Ljava/lang/String;

.field final targetSdkVersion:I

.field final toUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 9

    .line 15040
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15041
    iput p1, p0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->moveId:I

    .line 15042
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->fromUuid:Ljava/lang/String;

    .line 15043
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->toUuid:Ljava/lang/String;

    .line 15044
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->packageName:Ljava/lang/String;

    .line 15045
    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->dataAppName:Ljava/lang/String;

    .line 15046
    iput p6, p0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->appId:I

    .line 15047
    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->seinfo:Ljava/lang/String;

    .line 15048
    iput p8, p0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->targetSdkVersion:I

    .line 15049
    return-void
.end method
