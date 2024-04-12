module SQLite3
  module Constants
    #
    # CAPI3REF: Text Encodings
    #
    # These constant define integer codes that represent the various
    # text encodings supported by SQLite.
    #
    module TextRep
      # IMP: R-37514-35566
      UTF8 = 1
      # IMP: R-03371-37637
      UTF16LE = 2
      # IMP: R-51971-34154
      UTF16BE = 3
      # Use native byte order
      UTF16 = 4
      # Deprecated
      ANY = 5
      # sqlite3_create_collation only
      DETERMINISTIC = 0x800
    end

    #
    # CAPI3REF: Fundamental Datatypes
    #
    # ^(Every value in SQLite has one of five fundamental datatypes:
    #
    # <ul>
    # <li> 64-bit signed integer
    # <li> 64-bit IEEE floating point number
    # <li> string
    # <li> BLOB
    # <li> NULL
    # </ul>)^
    #
    # These constants are codes for each of those types.
    #
    module ColumnType
      INTEGER = 1
      FLOAT = 2
      TEXT = 3
      BLOB = 4
      NULL = 5
    end

    #
    # CAPI3REF: Result Codes
    #
    # Many SQLite functions return an integer result code from the set shown
    # here in order to indicate success or failure.
    #
    # New error codes may be added in future versions of SQLite.
    #
    module ErrorCode
      # Successful result
      OK = 0
      # SQL error or missing database
      ERROR = 1
      # An internal logic error in SQLite
      INTERNAL = 2
      # Access permission denied
      PERM = 3
      # Callback routine requested an abort
      ABORT = 4
      # The database file is locked
      BUSY = 5
      # A table in the database is locked
      LOCKED = 6
      # A malloc() failed
      NOMEM = 7
      # Attempt to write a readonly database
      READONLY = 8
      # Operation terminated by sqlite_interrupt()
      INTERRUPT = 9
      # Some kind of disk I/O error occurred
      IOERR = 10
      # The database disk image is malformed
      CORRUPT = 11
      # (Internal Only) Table or record not found
      NOTFOUND = 12
      # Insertion failed because database is full
      FULL = 13
      # Unable to open the database file
      CANTOPEN = 14
      # Database lock protocol error
      PROTOCOL = 15
      # (Internal Only) Database table is empty
      EMPTY = 16
      # The database schema changed
      SCHEMA = 17
      # Too much data for one row of a table
      TOOBIG = 18
      # Abort due to constraint violation
      CONSTRAINT = 19
      # Data type mismatch
      MISMATCH = 20
      # Library used incorrectly
      MISUSE = 21
      # Uses OS features not supported on host
      NOLFS = 22
      # Authorization denied
      AUTH = 23
      # Not used
      FORMAT = 24
      # 2nd parameter to sqlite3_bind out of range
      RANGE = 25
      # File opened that is not a database file
      NOTADB = 26
      # Notifications from sqlite3_log()
      NOTICE = 27
      # Warnings from sqlite3_log()
      WARNING = 28
      # sqlite_step() has another row ready
      ROW = 100
      # sqlite_step() has finished executing
      DONE = 101
    end

    module Status
      MEMORY_USED = 0 # This parameter is the current amount of memory checked out using sqlite3_malloc(), either directly or indirectly. The figure includes calls made to sqlite3_malloc() by the application and internal memory usage by the SQLite library. Auxiliary page-cache memory controlled by SQLITE_CONFIG_PAGECACHE is not included in this parameter. The amount returned is the sum of the allocation sizes as reported by the xSize method in sqlite3_mem_methods.
      PAGECACHE_USED = 1 # This parameter returns the number of pages used out of the pagecache memory allocator that was configured using SQLITE_CONFIG_PAGECACHE. The value returned is in pages, not in bytes.
      PAGECACHE_OVERFLOW = 2 # This parameter returns the number of bytes of page cache allocation which could not be satisfied by the SQLITE_CONFIG_PAGECACHE buffer and where forced to overflow to sqlite3_malloc(). The returned value includes allocations that overflowed because they where too large (they were larger than the "sz" parameter to SQLITE_CONFIG_PAGECACHE) and allocations that overflowed because no space was left in the page cache.
      SCRATCH_USED = 3 # NOT USED
      SCRATCH_OVERFLOW = 4 # NOT USED
      MALLOC_SIZE = 5 # This parameter records the largest memory allocation request handed to sqlite3_malloc() or sqlite3_realloc() (or their internal equivalents). Only the value returned in the *pHighwater parameter to sqlite3_status() is of interest. The value written into the *pCurrent parameter is undefined.
      PARSER_STACK = 6 # The *pHighwater parameter records the deepest parser stack. The *pCurrent value is undefined. The *pHighwater value is only meaningful if SQLite is compiled with YYTRACKMAXSTACKDEPTH.
      PAGECACHE_SIZE = 7 # This parameter records the largest memory allocation request handed to the pagecache memory allocator. Only the value returned in the *pHighwater parameter to sqlite3_status() is of interest. The value written into the *pCurrent parameter is undefined.
      SCRATCH_SIZE = 8 # NOT USED
      MALLOC_COUNT = 9 # This parameter records the number of separate memory allocations currently checked out.
    end
  end
end
