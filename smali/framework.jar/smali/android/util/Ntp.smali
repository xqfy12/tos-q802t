.class public Landroid/util/Ntp;
.super Ljava/lang/Object;
.source "Ntp.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final IP_INSERT_POS:I = 0x7

.field private static final LOGFILE:Ljava/lang/String; = "/data/local/logs/ntp_log"

.field private static final MAX_IP_COUNT:I = 0x10

.field private static final NTPFILE:Ljava/lang/String; = "/data/local/logs/ntp"

.field private static final TAG:Ljava/lang/String; = "Ntp"

.field private static final TAG_COUNT_HEAD:Ljava/lang/String; = "COUNT"

.field private static final TAG_IPQ_HEAD:Ljava/lang/String; = "IPQ"

.field private static mContext:Landroid/content/Context;

.field private static mIpQueue:[Ljava/net/InetAddress;

.field private static mReqCount:I

.field private static final mServers:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "2.android.pool.ntp.org"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "pool.ntp.org"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "time.izatcloud.net"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "cn.pool.ntp.org"

    aput-object v2, v0, v1

    sput-object v0, Landroid/util/Ntp;->mServers:[Ljava/lang/String;

    .line 51
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/net/InetAddress;

    sput-object v0, Landroid/util/Ntp;->mIpQueue:[Ljava/net/InetAddress;

    .line 56
    const-string v0, "Loading..."

    invoke-static {v0}, Landroid/util/Ntp;->log(Ljava/lang/String;)V

    .line 57
    invoke-static {}, Landroid/util/Ntp;->readFromFile()V

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBestIp()Ljava/net/InetAddress;
    .locals 2

    .prologue
    .line 194
    const/16 v0, 0xf

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_1

    .line 195
    sget-object v1, Landroid/util/Ntp;->mIpQueue:[Ljava/net/InetAddress;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 196
    sget-object v1, Landroid/util/Ntp;->mIpQueue:[Ljava/net/InetAddress;

    aget-object v1, v1, v0

    .line 199
    :goto_1
    return-object v1

    .line 194
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 199
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getIp(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 10
    .param p0, "server"    # Ljava/lang/String;

    .prologue
    .line 94
    const/4 v5, 0x1

    .line 95
    .local v5, "isOtherServer":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    sget-object v7, Landroid/util/Ntp;->mServers:[Ljava/lang/String;

    array-length v7, v7

    if-ge v4, v7, :cond_0

    .line 96
    sget-object v7, Landroid/util/Ntp;->mServers:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 97
    const/4 v5, 0x0

    .line 102
    :cond_0
    if-eqz v5, :cond_3

    .line 103
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Other server:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/util/Ntp;->log(Ljava/lang/String;)V

    .line 104
    const/4 v0, 0x0

    .line 131
    :cond_1
    :goto_1
    return-object v0

    .line 95
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 107
    :cond_3
    sget v7, Landroid/util/Ntp;->mReqCount:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Landroid/util/Ntp;->mReqCount:I

    .line 109
    sget v7, Landroid/util/Ntp;->mReqCount:I

    rem-int/lit8 v7, v7, 0x3

    if-nez v7, :cond_4

    .line 110
    invoke-static {}, Landroid/util/Ntp;->getBestIp()Ljava/net/InetAddress;

    move-result-object v0

    .line 111
    .local v0, "address":Ljava/net/InetAddress;
    if-nez v0, :cond_1

    .line 118
    .end local v0    # "address":Ljava/net/InetAddress;
    :cond_4
    :try_start_0
    sget-object v7, Landroid/util/Ntp;->mServers:[Ljava/lang/String;

    sget v8, Landroid/util/Ntp;->mReqCount:I

    sget-object v9, Landroid/util/Ntp;->mServers:[Ljava/lang/String;

    array-length v9, v9

    rem-int/2addr v8, v9

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 125
    .local v1, "addresses":[Ljava/net/InetAddress;
    array-length v7, v1

    if-nez v7, :cond_5

    .line 126
    invoke-static {}, Landroid/util/Ntp;->getBestIp()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_1

    .line 120
    .end local v1    # "addresses":[Ljava/net/InetAddress;
    :catch_0
    move-exception v2

    .line 122
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/util/Ntp;->getBestIp()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_1

    .line 129
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "addresses":[Ljava/net/InetAddress;
    :cond_5
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    .line 130
    .local v6, "random":Ljava/util/Random;
    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    aget-object v3, v1, v7

    .local v3, "hitAddress":Ljava/net/InetAddress;
    move-object v0, v3

    .line 131
    goto :goto_1
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 65
    const-string v0, "Ntp"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method

.method private static printIpQueue()Ljava/lang/String;
    .locals 5

    .prologue
    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .local v1, "out":Ljava/lang/StringBuilder;
    const-string v2, "IPQ"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x10

    if-ge v0, v2, :cond_1

    .line 206
    sget-object v2, Landroid/util/Ntp;->mIpQueue:[Ljava/net/InetAddress;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 207
    const-string v2, "#null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/util/Ntp;->mIpQueue:[Ljava/net/InetAddress;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 214
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static readFromFile()V
    .locals 7

    .prologue
    .line 234
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/data/local/logs/ntp"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x100

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .local v4, "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 238
    const-string v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "ins":[Ljava/lang/String;
    const-string v5, "COUNT"

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 240
    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Landroid/util/Ntp;->mReqCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 252
    .end local v2    # "ins":[Ljava/lang/String;
    .end local v3    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v5

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 257
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Init Ready:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Landroid/util/Ntp;->mReqCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/util/Ntp;->printIpQueue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/util/Ntp;->log(Ljava/lang/String;)V

    .line 258
    return-void

    .line 242
    .restart local v2    # "ins":[Ljava/lang/String;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_1
    :try_start_3
    const-string v5, "IPQ"

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 243
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/16 v5, 0x10

    if-ge v1, v5, :cond_0

    .line 244
    const-string/jumbo v5, "null"

    add-int/lit8 v6, v1, 0x1

    aget-object v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 243
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 247
    :cond_2
    sget-object v5, Landroid/util/Ntp;->mIpQueue:[Ljava/net/InetAddress;

    add-int/lit8 v6, v1, 0x1

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    aput-object v6, v5, v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 252
    .end local v1    # "i":I
    .end local v2    # "ins":[Ljava/lang/String;
    :cond_3
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    sput-object p0, Landroid/util/Ntp;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method

.method public static declared-synchronized updateIpQueue(Ljava/net/InetAddress;Z)V
    .locals 11
    .param p0, "addr"    # Ljava/net/InetAddress;
    .param p1, "success"    # Z

    .prologue
    const/16 v10, 0x10

    const/4 v9, 0x7

    .line 136
    const-class v6, Landroid/util/Ntp;

    monitor-enter v6

    if-nez p0, :cond_1

    .line 191
    :cond_0
    :goto_0
    monitor-exit v6

    return-void

    .line 140
    :cond_1
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Landroid/util/Ntp;->mReqCount:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p1, :cond_4

    const-string v5, "SUCC"

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/util/Ntp;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    if-eqz p1, :cond_0

    .line 147
    :try_start_1
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    invoke-static {v5}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 154
    .local v0, "address":Ljava/net/InetAddress;
    const/4 v4, 0x0

    .line 155
    .local v4, "updated":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v10, :cond_2

    .line 156
    :try_start_2
    sget-object v5, Landroid/util/Ntp;->mIpQueue:[Ljava/net/InetAddress;

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 157
    const/16 v5, 0xf

    if-ge v2, v5, :cond_5

    .line 159
    sget-object v5, Landroid/util/Ntp;->mIpQueue:[Ljava/net/InetAddress;

    aget-object v3, v5, v2

    .line 160
    .local v3, "temp":Ljava/net/InetAddress;
    sget-object v5, Landroid/util/Ntp;->mIpQueue:[Ljava/net/InetAddress;

    sget-object v7, Landroid/util/Ntp;->mIpQueue:[Ljava/net/InetAddress;

    add-int/lit8 v8, v2, 0x1

    aget-object v7, v7, v8

    aput-object v7, v5, v2

    .line 161
    sget-object v5, Landroid/util/Ntp;->mIpQueue:[Ljava/net/InetAddress;

    add-int/lit8 v7, v2, 0x1

    aput-object v3, v5, v7

    .line 162
    const/4 v4, 0x1

    .line 168
    .end local v3    # "temp":Ljava/net/InetAddress;
    :cond_2
    if-nez v4, :cond_3

    .line 169
    const/16 v2, 0x8

    :goto_3
    if-ge v2, v10, :cond_3

    .line 170
    sget-object v5, Landroid/util/Ntp;->mIpQueue:[Ljava/net/InetAddress;

    aget-object v5, v5, v2

    if-nez v5, :cond_6

    .line 171
    sget-object v5, Landroid/util/Ntp;->mIpQueue:[Ljava/net/InetAddress;

    aput-object v0, v5, v2

    .line 172
    const/4 v4, 0x1

    .line 179
    :cond_3
    if-nez v4, :cond_8

    .line 180
    const/4 v2, 0x0

    :goto_4
    if-gt v2, v9, :cond_7

    .line 181
    sget-object v5, Landroid/util/Ntp;->mIpQueue:[Ljava/net/InetAddress;

    sget-object v7, Landroid/util/Ntp;->mIpQueue:[Ljava/net/InetAddress;

    add-int/lit8 v8, v2, 0x1

    aget-object v7, v7, v8

    aput-object v7, v5, v2

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 140
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v2    # "i":I
    .end local v4    # "updated":Z
    :cond_4
    const-string v5, "FAIL"

    goto :goto_1

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateIpQueue()InetAddress.getByAddress() exception,addr="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/util/Ntp;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 136
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 155
    .restart local v0    # "address":Ljava/net/InetAddress;
    .restart local v2    # "i":I
    .restart local v4    # "updated":Z
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 169
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 183
    :cond_7
    :try_start_3
    sget-object v5, Landroid/util/Ntp;->mIpQueue:[Ljava/net/InetAddress;

    const/4 v7, 0x7

    aput-object v0, v5, v7

    .line 186
    :cond_8
    invoke-static {}, Landroid/util/Ntp;->writeToFile()V

    .line 188
    sget-object v5, Landroid/util/Ntp;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 189
    sget-object v5, Landroid/util/Ntp;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.server.NetworkTimeUpdateService.action.POLL"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method private static writeToFile()V
    .locals 4

    .prologue
    .line 219
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    const-string v2, "/data/local/logs/ntp"

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .local v1, "writer":Ljava/io/FileWriter;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/util/Ntp;->printIpQueue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "COUNT#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/util/Ntp;->mReqCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 230
    :goto_0
    return-void

    .line 225
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
