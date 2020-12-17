.class public Lcom/meizu/common/pps/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static addService_Method:Ljava/lang/reflect/Method;

.field private static checkService_Method:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    const-string v0, "AlphaMe"

    sput-object v0, Lcom/meizu/common/pps/ServiceManager;->TAG:Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/common/pps/ServiceManager;->checkService_Method:Ljava/lang/reflect/Method;

    .line 13
    sput-object v0, Lcom/meizu/common/pps/ServiceManager;->addService_Method:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 9
    .param p0, "name"  # Ljava/lang/String;
    .param p1, "service"  # Landroid/os/IBinder;

    .line 30
    :try_start_0
    sget-object v0, Lcom/meizu/common/pps/ServiceManager;->addService_Method:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_1f

    .line 31
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 32
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "addService"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v5, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/meizu/common/pps/ServiceManager;->addService_Method:Ljava/lang/reflect/Method;

    .line 34
    .end local v0  # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1f
    sget-object v0, Lcom/meizu/common/pps/ServiceManager;->addService_Method:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    aput-object p1, v3, v1

    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    .line 37
    goto :goto_43

    .line 35
    :catch_2c
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/meizu/common/pps/ServiceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_43
    return-void
.end method

.method public static checkService(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 8
    .param p0, "name"  # Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/meizu/common/pps/ServiceManager;->checkService_Method:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1b

    .line 18
    const-string v1, "android.os.ServiceManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 19
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "checkService"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/meizu/common/pps/ServiceManager;->checkService_Method:Ljava/lang/reflect/Method;

    .line 21
    .end local v1  # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1b
    sget-object v1, Lcom/meizu/common/pps/ServiceManager;->checkService_Method:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_28

    return-object v1

    .line 22
    :catch_28
    move-exception v1

    .line 23
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/meizu/common/pps/ServiceManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .end local v1  # "e":Ljava/lang/Exception;
    return-object v0
.end method
